
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpuart_port {int ipg_clk; int baud_clk; } ;


 unsigned int clk_get_rate (int ) ;
 scalar_t__ is_imx8qxp_lpuart (struct lpuart_port*) ;

__attribute__((used)) static unsigned int lpuart_get_baud_clk_rate(struct lpuart_port *sport)
{
 if (is_imx8qxp_lpuart(sport))
  return clk_get_rate(sport->baud_clk);

 return clk_get_rate(sport->ipg_clk);
}
