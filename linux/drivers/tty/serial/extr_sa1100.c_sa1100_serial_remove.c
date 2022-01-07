
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1100_port {int port; } ;
struct platform_device {int dummy; } ;


 struct sa1100_port* platform_get_drvdata (struct platform_device*) ;
 int sa1100_reg ;
 int uart_remove_one_port (int *,int *) ;

__attribute__((used)) static int sa1100_serial_remove(struct platform_device *pdev)
{
 struct sa1100_port *sport = platform_get_drvdata(pdev);

 if (sport)
  uart_remove_one_port(&sa1100_reg, &sport->port);

 return 0;
}
