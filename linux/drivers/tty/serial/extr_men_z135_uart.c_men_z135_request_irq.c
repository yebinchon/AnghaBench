
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int irq; } ;
struct men_z135_port {struct uart_port port; TYPE_1__* mdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int IRQF_SHARED ;
 int dev_err (struct device*,char*,int) ;
 int men_z135_intr ;
 int request_irq (int ,int ,int ,char*,struct men_z135_port*) ;

__attribute__((used)) static int men_z135_request_irq(struct men_z135_port *uart)
{
 struct device *dev = &uart->mdev->dev;
 struct uart_port *port = &uart->port;
 int err = 0;

 err = request_irq(port->irq, men_z135_intr, IRQF_SHARED,
   "men_z135_intr", uart);
 if (err)
  dev_err(dev, "Error %d getting interrupt\n", err);

 return err;
}
