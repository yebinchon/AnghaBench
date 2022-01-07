
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct uart_port {int dummy; } ;
struct TYPE_2__ {int sicr; } ;


 TYPE_1__* PSC (struct uart_port*) ;
 int out_be32 (int *,int ) ;

__attribute__((used)) static void mpc52xx_psc_set_sicr(struct uart_port *port, u32 val)
{
 out_be32(&PSC(port)->sicr, val);
}
