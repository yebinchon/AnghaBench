
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct men_z135_port {scalar_t__ rxbuf; int port; } ;
struct mcb_device {int dummy; } ;


 int free_page (unsigned long) ;
 int line ;
 struct men_z135_port* mcb_get_drvdata (struct mcb_device*) ;
 int men_z135_driver ;
 int uart_remove_one_port (int *,int *) ;

__attribute__((used)) static void men_z135_remove(struct mcb_device *mdev)
{
 struct men_z135_port *uart = mcb_get_drvdata(mdev);

 line--;
 uart_remove_one_port(&men_z135_driver, &uart->port);
 free_page((unsigned long) uart->rxbuf);
}
