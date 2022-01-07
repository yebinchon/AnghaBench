
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct uart_port {int dummy; } ;
struct TYPE_2__ {int mpc52xx_psc_ipcr; } ;


 TYPE_1__* PSC (struct uart_port*) ;
 int in_8 (int *) ;

__attribute__((used)) static u8 mpc52xx_psc_get_ipcr(struct uart_port *port)
{
 return in_8(&PSC(port)->mpc52xx_psc_ipcr);
}
