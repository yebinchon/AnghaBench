
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pardevice {long timeout; TYPE_2__* port; } ;
struct TYPE_4__ {TYPE_1__* physport; } ;
struct TYPE_3__ {struct pardevice* cad; } ;


 int parport_ieee1284_wakeup (TYPE_2__*) ;

long parport_set_timeout (struct pardevice *dev, long inactivity)
{
 long int old = dev->timeout;

 dev->timeout = inactivity;

 if (dev->port->physport->cad == dev)
  parport_ieee1284_wakeup (dev->port);

 return old;
}
