
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx_port {scalar_t__ have_rtscts; } ;


 int UCR1 ;
 int UCR1_RTSDEN ;
 int UCR3 ;
 int UCR3_AWAKEN ;
 int USR1 ;
 int USR1_AWAKE ;
 int imx_uart_readl (struct imx_port*,int ) ;
 int imx_uart_writel (struct imx_port*,int ,int ) ;

__attribute__((used)) static void imx_uart_enable_wakeup(struct imx_port *sport, bool on)
{
 u32 ucr3;

 ucr3 = imx_uart_readl(sport, UCR3);
 if (on) {
  imx_uart_writel(sport, USR1_AWAKE, USR1);
  ucr3 |= UCR3_AWAKEN;
 } else {
  ucr3 &= ~UCR3_AWAKEN;
 }
 imx_uart_writel(sport, ucr3, UCR3);

 if (sport->have_rtscts) {
  u32 ucr1 = imx_uart_readl(sport, UCR1);
  if (on)
   ucr1 |= UCR1_RTSDEN;
  else
   ucr1 &= ~UCR1_RTSDEN;
  imx_uart_writel(sport, ucr1, UCR1);
 }
}
