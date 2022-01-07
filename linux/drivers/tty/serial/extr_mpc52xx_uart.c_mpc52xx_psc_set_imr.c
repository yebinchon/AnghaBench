
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct uart_port {int dummy; } ;
struct TYPE_2__ {int mpc52xx_psc_imr; } ;


 TYPE_1__* PSC (struct uart_port*) ;
 int out_be16 (int *,int ) ;

__attribute__((used)) static void mpc52xx_psc_set_imr(struct uart_port *port, u16 val)
{
 out_be16(&PSC(port)->mpc52xx_psc_imr, val);
}
