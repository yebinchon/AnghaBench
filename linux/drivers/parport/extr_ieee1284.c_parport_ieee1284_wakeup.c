
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct parport {TYPE_2__* physport; } ;
struct TYPE_3__ {int irq; } ;
struct TYPE_4__ {TYPE_1__ ieee1284; } ;


 int up (int *) ;

__attribute__((used)) static void parport_ieee1284_wakeup (struct parport *port)
{
 up (&port->physport->ieee1284.irq);
}
