
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct uart_port {int dummy; } ;
struct TYPE_2__ {int mpc52xx_psc_status; } ;


 TYPE_1__* PSC (struct uart_port*) ;
 int in_be16 (int *) ;

__attribute__((used)) static u16 mpc52xx_psc_get_status(struct uart_port *port)
{
 return in_be16(&PSC(port)->mpc52xx_psc_status);
}
