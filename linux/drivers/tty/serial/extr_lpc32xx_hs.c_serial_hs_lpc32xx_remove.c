
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct lpc32xx_hsuart_port {int port; } ;


 int lpc32xx_hs_reg ;
 struct lpc32xx_hsuart_port* platform_get_drvdata (struct platform_device*) ;
 int uart_remove_one_port (int *,int *) ;

__attribute__((used)) static int serial_hs_lpc32xx_remove(struct platform_device *pdev)
{
 struct lpc32xx_hsuart_port *p = platform_get_drvdata(pdev);

 uart_remove_one_port(&lpc32xx_hs_reg, &p->port);

 return 0;
}
