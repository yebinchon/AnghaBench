
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenvif {struct backend_info* be; } ;
struct TYPE_2__ {int kobj; } ;
struct xenbus_device {TYPE_1__ dev; int otherend_id; int nodename; } ;
struct backend_info {struct xenvif* vif; struct xenbus_device* dev; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct xenvif*) ;
 int KOBJ_ONLINE ;
 int PTR_ERR (struct xenvif*) ;
 int XBT_NIL ;
 int kobject_uevent (int *,int ) ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*) ;
 int xenbus_scanf (int ,int ,char*,char*,long*) ;
 struct xenvif* xenvif_alloc (TYPE_1__*,int ,long) ;

__attribute__((used)) static int backend_create_xenvif(struct backend_info *be)
{
 int err;
 long handle;
 struct xenbus_device *dev = be->dev;
 struct xenvif *vif;

 if (be->vif != ((void*)0))
  return 0;

 err = xenbus_scanf(XBT_NIL, dev->nodename, "handle", "%li", &handle);
 if (err != 1) {
  xenbus_dev_fatal(dev, err, "reading handle");
  return (err < 0) ? err : -EINVAL;
 }

 vif = xenvif_alloc(&dev->dev, dev->otherend_id, handle);
 if (IS_ERR(vif)) {
  err = PTR_ERR(vif);
  xenbus_dev_fatal(dev, err, "creating interface");
  return err;
 }
 be->vif = vif;
 vif->be = be;

 kobject_uevent(&dev->dev.kobj, KOBJ_ONLINE);
 return 0;
}
