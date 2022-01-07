
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; scalar_t__ membase; } ;
struct uart_sunsu_port {scalar_t__ su_type; int reg_size; TYPE_1__ port; int serio; } ;
struct platform_device {int * resource; } ;


 scalar_t__ PORT_UNKNOWN ;
 scalar_t__ SU_PORT_KBD ;
 scalar_t__ SU_PORT_MS ;
 int kfree (struct uart_sunsu_port*) ;
 int of_iounmap (int *,scalar_t__,int ) ;
 struct uart_sunsu_port* platform_get_drvdata (struct platform_device*) ;
 int serio_unregister_port (int *) ;
 int sunsu_reg ;
 int uart_remove_one_port (int *,TYPE_1__*) ;

__attribute__((used)) static int su_remove(struct platform_device *op)
{
 struct uart_sunsu_port *up = platform_get_drvdata(op);
 bool kbdms = 0;

 if (up->su_type == SU_PORT_MS ||
     up->su_type == SU_PORT_KBD)
  kbdms = 1;

 if (kbdms) {



 } else if (up->port.type != PORT_UNKNOWN)
  uart_remove_one_port(&sunsu_reg, &up->port);

 if (up->port.membase)
  of_iounmap(&op->resource[0], up->port.membase, up->reg_size);

 if (kbdms)
  kfree(up);

 return 0;
}
