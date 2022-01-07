
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int flags; } ;
struct uart_port {TYPE_1__ rs485; } ;
struct imx_port {int gpios; } ;


 int SER_RS485_ENABLED ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_LOOP ;
 unsigned int TIOCM_RTS ;
 int UCR2 ;
 int UCR2_CTS ;
 int UCR2_CTSC ;
 int UCR2_IRTS ;
 int UCR3 ;
 int UCR3_DSR ;
 int UTS_LOOP ;
 int imx_uart_readl (struct imx_port*,int ) ;
 int imx_uart_uts_reg (struct imx_port*) ;
 int imx_uart_writel (struct imx_port*,int,int ) ;
 int mctrl_gpio_set (int ,unsigned int) ;

__attribute__((used)) static void imx_uart_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 struct imx_port *sport = (struct imx_port *)port;
 u32 ucr3, uts;

 if (!(port->rs485.flags & SER_RS485_ENABLED)) {
  u32 ucr2;





  ucr2 = imx_uart_readl(sport, UCR2);
  ucr2 &= ~(UCR2_CTS | UCR2_CTSC);
  if (mctrl & TIOCM_RTS) {
   ucr2 |= UCR2_CTS;





   if (!(ucr2 & UCR2_IRTS))
    ucr2 |= UCR2_CTSC;
  }
  imx_uart_writel(sport, ucr2, UCR2);
 }

 ucr3 = imx_uart_readl(sport, UCR3) & ~UCR3_DSR;
 if (!(mctrl & TIOCM_DTR))
  ucr3 |= UCR3_DSR;
 imx_uart_writel(sport, ucr3, UCR3);

 uts = imx_uart_readl(sport, imx_uart_uts_reg(sport)) & ~UTS_LOOP;
 if (mctrl & TIOCM_LOOP)
  uts |= UTS_LOOP;
 imx_uart_writel(sport, uts, imx_uart_uts_reg(sport));

 mctrl_gpio_set(sport->gpios, mctrl);
}
