
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_port {int dummy; } ;


 int UFCR ;
 unsigned int UFCR_DCEDTE ;
 unsigned int UFCR_RFDIV ;
 unsigned char UFCR_TXTL_SHF ;
 unsigned int imx_uart_readl (struct imx_port*,int ) ;
 int imx_uart_writel (struct imx_port*,unsigned int,int ) ;

__attribute__((used)) static void imx_uart_setup_ufcr(struct imx_port *sport,
    unsigned char txwl, unsigned char rxwl)
{
 unsigned int val;


 val = imx_uart_readl(sport, UFCR) & (UFCR_RFDIV | UFCR_DCEDTE);
 val |= txwl << UFCR_TXTL_SHF | rxwl;
 imx_uart_writel(sport, val, UFCR);
}
