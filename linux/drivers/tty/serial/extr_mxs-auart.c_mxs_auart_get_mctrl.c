
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int dummy; } ;
struct mxs_auart_port {int gpios; } ;


 int AUART_STAT_CTS ;
 int REG_STAT ;
 int TIOCM_CTS ;
 int mctrl_gpio_get (int ,int*) ;
 int mxs_read (struct mxs_auart_port*,int ) ;
 struct mxs_auart_port* to_auart_port (struct uart_port*) ;

__attribute__((used)) static u32 mxs_auart_get_mctrl(struct uart_port *u)
{
 struct mxs_auart_port *s = to_auart_port(u);
 u32 stat = mxs_read(s, REG_STAT);
 u32 mctrl = 0;

 if (stat & AUART_STAT_CTS)
  mctrl |= TIOCM_CTS;

 return mctrl_gpio_get(s->gpios, &mctrl);
}
