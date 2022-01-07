
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenvif_queue {int id; TYPE_1__* vif; } ;
struct xenbus_device {char* otherend; } ;
struct backend_info {struct xenbus_device* dev; } ;
struct TYPE_2__ {unsigned int num_queues; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int XBT_NIL ;
 int kfree (char*) ;
 char* kzalloc (size_t,int ) ;
 int snprintf (char*,size_t,char*,char*,int) ;
 int strcpy (char*,char*) ;
 size_t const strlen (char*) ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*,...) ;
 int xenbus_gather (int ,char*,char*,char*,...) ;
 int xenbus_scanf (int ,char*,char*,char*,unsigned int*) ;
 int xenvif_connect_data (struct xenvif_queue*,unsigned long,unsigned long,unsigned int,unsigned int) ;

__attribute__((used)) static int connect_data_rings(struct backend_info *be,
         struct xenvif_queue *queue)
{
 struct xenbus_device *dev = be->dev;
 unsigned int num_queues = queue->vif->num_queues;
 unsigned long tx_ring_ref, rx_ring_ref;
 unsigned int tx_evtchn, rx_evtchn;
 int err;
 char *xspath;
 size_t xspathsize;
 const size_t xenstore_path_ext_size = 11;







 if (num_queues == 1) {
  xspath = kzalloc(strlen(dev->otherend) + 1, GFP_KERNEL);
  if (!xspath) {
   xenbus_dev_fatal(dev, -ENOMEM,
      "reading ring references");
   return -ENOMEM;
  }
  strcpy(xspath, dev->otherend);
 } else {
  xspathsize = strlen(dev->otherend) + xenstore_path_ext_size;
  xspath = kzalloc(xspathsize, GFP_KERNEL);
  if (!xspath) {
   xenbus_dev_fatal(dev, -ENOMEM,
      "reading ring references");
   return -ENOMEM;
  }
  snprintf(xspath, xspathsize, "%s/queue-%u", dev->otherend,
    queue->id);
 }

 err = xenbus_gather(XBT_NIL, xspath,
       "tx-ring-ref", "%lu", &tx_ring_ref,
       "rx-ring-ref", "%lu", &rx_ring_ref, ((void*)0));
 if (err) {
  xenbus_dev_fatal(dev, err,
     "reading %s/ring-ref",
     xspath);
  goto err;
 }


 err = xenbus_gather(XBT_NIL, xspath,
       "event-channel-tx", "%u", &tx_evtchn,
       "event-channel-rx", "%u", &rx_evtchn, ((void*)0));
 if (err < 0) {
  err = xenbus_scanf(XBT_NIL, xspath,
       "event-channel", "%u", &tx_evtchn);
  if (err < 0) {
   xenbus_dev_fatal(dev, err,
      "reading %s/event-channel(-tx/rx)",
      xspath);
   goto err;
  }
  rx_evtchn = tx_evtchn;
 }


 err = xenvif_connect_data(queue, tx_ring_ref, rx_ring_ref,
      tx_evtchn, rx_evtchn);
 if (err) {
  xenbus_dev_fatal(dev, err,
     "mapping shared-frames %lu/%lu port tx %u rx %u",
     tx_ring_ref, rx_ring_ref,
     tx_evtchn, rx_evtchn);
  goto err;
 }

 err = 0;
err:
 kfree(xspath);
 return err;
}
