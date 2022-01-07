
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcifront_device {TYPE_1__* xdev; } ;
typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;
struct TYPE_2__ {int nodename; } ;


 int XenbusStateClosed ;
 int XenbusStateClosing ;
 int XenbusStateConnected ;
 int pcifront_disconnect (struct pcifront_device*) ;
 int pcifront_free_roots (struct pcifront_device*) ;
 int xenbus_read_driver_state (int ) ;
 int xenbus_switch_state (TYPE_1__*,int ) ;

__attribute__((used)) static int pcifront_try_disconnect(struct pcifront_device *pdev)
{
 int err = 0;
 enum xenbus_state prev_state;


 prev_state = xenbus_read_driver_state(pdev->xdev->nodename);

 if (prev_state >= XenbusStateClosing)
  goto out;

 if (prev_state == XenbusStateConnected) {
  pcifront_free_roots(pdev);
  pcifront_disconnect(pdev);
 }

 err = xenbus_switch_state(pdev->xdev, XenbusStateClosed);

out:

 return err;
}
