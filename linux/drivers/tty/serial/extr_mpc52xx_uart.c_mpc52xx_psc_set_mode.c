
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct uart_port {int dummy; } ;
struct TYPE_2__ {int mode; int command; } ;


 int MPC52xx_PSC_SEL_MODE_REG_1 ;
 TYPE_1__* PSC (struct uart_port*) ;
 int out_8 (int *,int ) ;

__attribute__((used)) static void mpc52xx_psc_set_mode(struct uart_port *port, u8 mr1, u8 mr2)
{
 out_8(&PSC(port)->command, MPC52xx_PSC_SEL_MODE_REG_1);
 out_8(&PSC(port)->mode, mr1);
 out_8(&PSC(port)->mode, mr2);
}
