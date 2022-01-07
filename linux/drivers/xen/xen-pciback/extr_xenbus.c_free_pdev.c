
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_pcibk_device {TYPE_1__* xdev; scalar_t__ be_watching; int be_watch; } ;
struct TYPE_2__ {int dev; } ;


 int dev_set_drvdata (int *,int *) ;
 int kfree (struct xen_pcibk_device*) ;
 int unregister_xenbus_watch (int *) ;
 int xen_pcibk_disconnect (struct xen_pcibk_device*) ;
 int xen_pcibk_release_devices (struct xen_pcibk_device*) ;

__attribute__((used)) static void free_pdev(struct xen_pcibk_device *pdev)
{
 if (pdev->be_watching) {
  unregister_xenbus_watch(&pdev->be_watch);
  pdev->be_watching = 0;
 }

 xen_pcibk_disconnect(pdev);



 xen_pcibk_release_devices(pdev);

 dev_set_drvdata(&pdev->xdev->dev, ((void*)0));
 pdev->xdev = ((void*)0);

 kfree(pdev);
}
