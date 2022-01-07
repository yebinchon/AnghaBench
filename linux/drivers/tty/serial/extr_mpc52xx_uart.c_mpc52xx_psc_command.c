
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct uart_port {int dummy; } ;
struct TYPE_2__ {int command; } ;


 TYPE_1__* PSC (struct uart_port*) ;
 int out_8 (int *,int ) ;

__attribute__((used)) static void mpc52xx_psc_command(struct uart_port *port, u8 cmd)
{
 out_8(&PSC(port)->command, cmd);
}
