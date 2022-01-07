
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mctrl; } ;
struct imx_port {TYPE_1__ port; int gpios; } ;


 int TIOCM_RTS ;
 int UCR2_CTS ;
 int UCR2_CTSC ;
 int mctrl_gpio_set (int ,int ) ;

__attribute__((used)) static void imx_uart_rts_active(struct imx_port *sport, u32 *ucr2)
{
 *ucr2 &= ~(UCR2_CTSC | UCR2_CTS);

 sport->port.mctrl |= TIOCM_RTS;
 mctrl_gpio_set(sport->gpios, sport->port.mctrl);
}
