
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pps_client_pp {int index; int pps; } ;
struct parport {TYPE_1__* ops; struct pardevice* cad; } ;
struct pardevice {struct pps_client_pp* private; int name; } ;
struct TYPE_2__ {int (* disable_irq ) (struct parport*) ;} ;


 int KBUILD_MODNAME ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct pps_client_pp*) ;
 int parport_release (struct pardevice*) ;
 int parport_unregister_device (struct pardevice*) ;
 int pps_client_index ;
 int pps_unregister_source (int ) ;
 scalar_t__ strcmp (int ,int ) ;
 int stub1 (struct parport*) ;

__attribute__((used)) static void parport_detach(struct parport *port)
{
 struct pardevice *pardev = port->cad;
 struct pps_client_pp *device;


 if (!pardev || strcmp(pardev->name, KBUILD_MODNAME))

  return;

 device = pardev->private;

 port->ops->disable_irq(port);
 pps_unregister_source(device->pps);
 parport_release(pardev);
 parport_unregister_device(pardev);
 ida_simple_remove(&pps_client_index, device->index);
 kfree(device);
}
