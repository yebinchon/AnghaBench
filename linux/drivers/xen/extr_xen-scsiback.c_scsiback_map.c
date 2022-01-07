
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int otherend; } ;
struct vscsibk_info {struct xenbus_device* dev; } ;


 int XBT_NIL ;
 int scsiback_init_sring (struct vscsibk_info*,unsigned int,unsigned int) ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*,int ) ;
 int xenbus_gather (int ,int ,char*,char*,unsigned int*,char*,char*,unsigned int*,int *) ;

__attribute__((used)) static int scsiback_map(struct vscsibk_info *info)
{
 struct xenbus_device *dev = info->dev;
 unsigned int ring_ref, evtchn;
 int err;

 err = xenbus_gather(XBT_NIL, dev->otherend,
   "ring-ref", "%u", &ring_ref,
   "event-channel", "%u", &evtchn, ((void*)0));
 if (err) {
  xenbus_dev_fatal(dev, err, "reading %s ring", dev->otherend);
  return err;
 }

 return scsiback_init_sring(info, ring_ref, evtchn);
}
