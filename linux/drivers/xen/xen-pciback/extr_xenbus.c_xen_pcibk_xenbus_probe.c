
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device_id {int dummy; } ;
struct xenbus_device {int nodename; } ;
struct xen_pcibk_device {int be_watching; int be_watch; } ;


 int ENOMEM ;
 int XenbusStateInitWait ;
 struct xen_pcibk_device* alloc_pdev (struct xenbus_device*) ;
 int xen_pcibk_be_watch (int *,int *,int *) ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*) ;
 int xenbus_switch_state (struct xenbus_device*,int ) ;
 int xenbus_watch_path (struct xenbus_device*,int ,int *,int (*) (int *,int *,int *)) ;

__attribute__((used)) static int xen_pcibk_xenbus_probe(struct xenbus_device *dev,
    const struct xenbus_device_id *id)
{
 int err = 0;
 struct xen_pcibk_device *pdev = alloc_pdev(dev);

 if (pdev == ((void*)0)) {
  err = -ENOMEM;
  xenbus_dev_fatal(dev, err,
     "Error allocating xen_pcibk_device struct");
  goto out;
 }


 err = xenbus_switch_state(dev, XenbusStateInitWait);
 if (err)
  goto out;


 err = xenbus_watch_path(dev, dev->nodename, &pdev->be_watch,
    xen_pcibk_be_watch);
 if (err)
  goto out;

 pdev->be_watching = 1;




 xen_pcibk_be_watch(&pdev->be_watch, ((void*)0), ((void*)0));

out:
 return err;
}
