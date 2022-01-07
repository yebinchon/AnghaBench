
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct xenvif_queue {unsigned int id; unsigned long credit_bytes; unsigned long remaining_credit; unsigned long credit_usec; int name; TYPE_1__* vif; } ;
struct xenbus_device {int nodename; int otherend; } ;
struct backend_info {int have_hotplug_status_watch; TYPE_1__* vif; int hotplug_status_watch; struct xenbus_device* dev; } ;
struct TYPE_11__ {char* name; } ;
struct TYPE_10__ {unsigned int num_queues; unsigned int stalled_queues; struct xenvif_queue* queues; TYPE_7__* dev; int fe_dev_addr; } ;


 int EINVAL ;
 int ENOMEM ;
 int array_size (unsigned int,int) ;
 int connect_ctrl_ring (struct backend_info*) ;
 int connect_data_rings (struct backend_info*,struct xenvif_queue*) ;
 int hotplug_status_changed ;
 int netif_set_real_num_rx_queues (TYPE_7__*,unsigned int) ;
 int netif_set_real_num_tx_queues (TYPE_7__*,unsigned int) ;
 int netif_tx_wake_all_queues (TYPE_7__*) ;
 int read_xenbus_vif_flags (struct backend_info*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int snprintf (int ,int,char*,char*,unsigned int) ;
 int unregister_hotplug_status_watch (struct backend_info*) ;
 int vfree (struct xenvif_queue*) ;
 struct xenvif_queue* vzalloc (int ) ;
 int xen_net_read_mac (struct xenbus_device*,int ) ;
 int xen_net_read_rate (struct xenbus_device*,unsigned long*,unsigned long*) ;
 int xen_register_watchers (struct xenbus_device*,TYPE_1__*) ;
 int xen_unregister_watchers (TYPE_1__*) ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*,...) ;
 unsigned int xenbus_read_unsigned (int ,char*,int) ;
 int xenbus_watch_pathfmt (struct xenbus_device*,int *,int ,char*,int ,char*) ;
 int xenvif_carrier_on (TYPE_1__*) ;
 int xenvif_debugfs_addif (TYPE_1__*) ;
 int xenvif_deinit_queue (struct xenvif_queue*) ;
 int xenvif_disconnect_ctrl (TYPE_1__*) ;
 int xenvif_disconnect_data (TYPE_1__*) ;
 int xenvif_init_queue (struct xenvif_queue*) ;
 unsigned int xenvif_max_queues ;

__attribute__((used)) static void connect(struct backend_info *be)
{
 int err;
 struct xenbus_device *dev = be->dev;
 unsigned long credit_bytes, credit_usec;
 unsigned int queue_index;
 unsigned int requested_num_queues;
 struct xenvif_queue *queue;




 requested_num_queues = xenbus_read_unsigned(dev->otherend,
     "multi-queue-num-queues", 1);
 if (requested_num_queues > xenvif_max_queues) {

  xenbus_dev_fatal(dev, -EINVAL,
     "guest requested %u queues, exceeding the maximum of %u.",
     requested_num_queues, xenvif_max_queues);
  return;
 }

 err = xen_net_read_mac(dev, be->vif->fe_dev_addr);
 if (err) {
  xenbus_dev_fatal(dev, err, "parsing %s/mac", dev->nodename);
  return;
 }

 xen_net_read_rate(dev, &credit_bytes, &credit_usec);
 xen_unregister_watchers(be->vif);
 xen_register_watchers(dev, be->vif);
 read_xenbus_vif_flags(be);

 err = connect_ctrl_ring(be);
 if (err) {
  xenbus_dev_fatal(dev, err, "connecting control ring");
  return;
 }


 be->vif->queues = vzalloc(array_size(requested_num_queues,
          sizeof(struct xenvif_queue)));
 if (!be->vif->queues) {
  xenbus_dev_fatal(dev, -ENOMEM,
     "allocating queues");
  return;
 }

 be->vif->num_queues = requested_num_queues;
 be->vif->stalled_queues = requested_num_queues;

 for (queue_index = 0; queue_index < requested_num_queues; ++queue_index) {
  queue = &be->vif->queues[queue_index];
  queue->vif = be->vif;
  queue->id = queue_index;
  snprintf(queue->name, sizeof(queue->name), "%s-q%u",
    be->vif->dev->name, queue->id);

  err = xenvif_init_queue(queue);
  if (err) {






   be->vif->num_queues = queue_index;
   goto err;
  }

  queue->credit_bytes = credit_bytes;
  queue->remaining_credit = credit_bytes;
  queue->credit_usec = credit_usec;

  err = connect_data_rings(be, queue);
  if (err) {





   xenvif_deinit_queue(queue);
   be->vif->num_queues = queue_index;
   goto err;
  }
 }
 rtnl_lock();
 netif_set_real_num_tx_queues(be->vif->dev, requested_num_queues);
 netif_set_real_num_rx_queues(be->vif->dev, requested_num_queues);
 rtnl_unlock();

 xenvif_carrier_on(be->vif);

 unregister_hotplug_status_watch(be);
 err = xenbus_watch_pathfmt(dev, &be->hotplug_status_watch,
       hotplug_status_changed,
       "%s/%s", dev->nodename, "hotplug-status");
 if (!err)
  be->have_hotplug_status_watch = 1;

 netif_tx_wake_all_queues(be->vif->dev);

 return;

err:
 if (be->vif->num_queues > 0)
  xenvif_disconnect_data(be->vif);
 for (queue_index = 0; queue_index < be->vif->num_queues; ++queue_index)
  xenvif_deinit_queue(&be->vif->queues[queue_index]);
 vfree(be->vif->queues);
 be->vif->queues = ((void*)0);
 be->vif->num_queues = 0;
 xenvif_disconnect_ctrl(be->vif);
 return;
}
