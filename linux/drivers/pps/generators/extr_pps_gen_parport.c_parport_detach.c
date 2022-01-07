
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport {scalar_t__ cad; } ;
struct TYPE_2__ {scalar_t__ pardev; int timer; } ;


 TYPE_1__ device ;
 int hrtimer_cancel (int *) ;
 int parport_release (scalar_t__) ;
 int parport_unregister_device (scalar_t__) ;

__attribute__((used)) static void parport_detach(struct parport *port)
{
 if (port->cad != device.pardev)
  return;

 hrtimer_cancel(&device.timer);
 parport_release(device.pardev);
 parport_unregister_device(device.pardev);
}
