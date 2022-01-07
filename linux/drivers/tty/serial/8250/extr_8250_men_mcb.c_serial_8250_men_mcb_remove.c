
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int membase; } ;
struct TYPE_4__ {TYPE_1__ port; } ;
struct serial_8250_men_mcb_data {int line; TYPE_2__ uart; } ;
struct mcb_device {int dev; } ;


 int dev_err (int *,char*) ;
 int get_num_ports (struct mcb_device*,int ) ;
 struct serial_8250_men_mcb_data* mcb_get_drvdata (struct mcb_device*) ;
 int serial8250_unregister_port (int ) ;

__attribute__((used)) static void serial_8250_men_mcb_remove(struct mcb_device *mdev)
{
 int num_ports, i;
 struct serial_8250_men_mcb_data *data = mcb_get_drvdata(mdev);

 if (!data)
  return;

 num_ports = get_num_ports(mdev, data[0].uart.port.membase);
 if (num_ports < 0 || num_ports > 4) {
  dev_err(&mdev->dev, "error retrieving number of ports!\n");
  return;
 }

 for (i = 0; i < num_ports; i++)
  serial8250_unregister_port(data[i].line);
}
