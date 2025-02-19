
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenbus_device {int dev; int otherend_id; int otherend; } ;
struct pvcalls_fedata {int irq; int * sring; int list; int socket_lock; int socketpass_mappings; int socket_mappings; struct xenbus_device* dev; int ring; } ;
typedef int grant_ref_t ;
struct TYPE_2__ {int frontends_lock; int frontends; } ;


 int BACK_RING_INIT (int *,int *,int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_RADIX_TREE (int *,int ) ;
 int IRQF_ONESHOT ;
 int XBT_NIL ;
 int XEN_PAGE_SIZE ;
 int bind_interdomain_evtchn_to_irq (int ,int) ;
 int dev_set_drvdata (int *,struct pvcalls_fedata*) ;
 int down (int *) ;
 int kfree (struct pvcalls_fedata*) ;
 struct pvcalls_fedata* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int pvcalls_back_event ;
 TYPE_1__ pvcalls_back_global ;
 int request_threaded_irq (int,int *,int ,int ,char*,struct xenbus_device*) ;
 int sema_init (int *,int) ;
 int unbind_from_irqhandler (int,struct xenbus_device*) ;
 int up (int *) ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*,int ) ;
 int xenbus_map_ring_valloc (struct xenbus_device*,int*,int,void**) ;
 int xenbus_scanf (int ,int ,char*,char*,int*) ;
 int xenbus_unmap_ring_vfree (struct xenbus_device*,int *) ;

__attribute__((used)) static int backend_connect(struct xenbus_device *dev)
{
 int err, evtchn;
 grant_ref_t ring_ref;
 struct pvcalls_fedata *fedata = ((void*)0);

 fedata = kzalloc(sizeof(struct pvcalls_fedata), GFP_KERNEL);
 if (!fedata)
  return -ENOMEM;

 fedata->irq = -1;
 err = xenbus_scanf(XBT_NIL, dev->otherend, "port", "%u",
      &evtchn);
 if (err != 1) {
  err = -EINVAL;
  xenbus_dev_fatal(dev, err, "reading %s/event-channel",
     dev->otherend);
  goto error;
 }

 err = xenbus_scanf(XBT_NIL, dev->otherend, "ring-ref", "%u", &ring_ref);
 if (err != 1) {
  err = -EINVAL;
  xenbus_dev_fatal(dev, err, "reading %s/ring-ref",
     dev->otherend);
  goto error;
 }

 err = bind_interdomain_evtchn_to_irq(dev->otherend_id, evtchn);
 if (err < 0)
  goto error;
 fedata->irq = err;

 err = request_threaded_irq(fedata->irq, ((void*)0), pvcalls_back_event,
       IRQF_ONESHOT, "pvcalls-back", dev);
 if (err < 0)
  goto error;

 err = xenbus_map_ring_valloc(dev, &ring_ref, 1,
         (void **)&fedata->sring);
 if (err < 0)
  goto error;

 BACK_RING_INIT(&fedata->ring, fedata->sring, XEN_PAGE_SIZE * 1);
 fedata->dev = dev;

 INIT_LIST_HEAD(&fedata->socket_mappings);
 INIT_RADIX_TREE(&fedata->socketpass_mappings, GFP_KERNEL);
 sema_init(&fedata->socket_lock, 1);
 dev_set_drvdata(&dev->dev, fedata);

 down(&pvcalls_back_global.frontends_lock);
 list_add_tail(&fedata->list, &pvcalls_back_global.frontends);
 up(&pvcalls_back_global.frontends_lock);

 return 0;

 error:
 if (fedata->irq >= 0)
  unbind_from_irqhandler(fedata->irq, dev);
 if (fedata->sring != ((void*)0))
  xenbus_unmap_ring_vfree(dev, fedata->sring);
 kfree(fedata);
 return err;
}
