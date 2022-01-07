
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int seq_print; } ;
struct TYPE_8__ {int list_lock; int work; int list; } ;
struct TYPE_7__ {struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int stat_read_buf_num; int dma_parms; struct ccw_device* ccw_device; TYPE_3__ service_level; int abort_lock; int erp_lock; int erp_running_head; int erp_ready_head; int erp_done_wqh; int erp_ready_wq; TYPE_2__ events; int port_list; int port_list_lock; int req_list; TYPE_1__ erp_action; int next_port_scan; int ns_up_work; int scan_work; int stat_work; int ref; } ;
struct TYPE_10__ {int * dma_parms; int kobj; } ;
struct ccw_device {TYPE_4__ dev; int * handler; } ;


 int ENODEV ;
 int ENOMEM ;
 struct zfcp_adapter* ERR_PTR (int ) ;
 int FSF_STATUS_READS_RECOM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int _zfcp_status_read_scheduler ;
 int dev_set_drvdata (TYPE_4__*,struct zfcp_adapter*) ;
 int get_device (TYPE_4__*) ;
 int init_waitqueue_head (int *) ;
 int jiffies ;
 int kref_init (int *) ;
 struct zfcp_adapter* kzalloc (int,int ) ;
 int put_device (TYPE_4__*) ;
 int rwlock_init (int *) ;
 int spin_lock_init (int *) ;
 scalar_t__ sysfs_create_group (int *,int *) ;
 int zfcp_adapter_unregister (struct zfcp_adapter*) ;
 scalar_t__ zfcp_allocate_low_mem_buffers (struct zfcp_adapter*) ;
 scalar_t__ zfcp_dbf_adapter_register (struct zfcp_adapter*) ;
 scalar_t__ zfcp_erp_thread_setup (struct zfcp_adapter*) ;
 scalar_t__ zfcp_fc_gs_setup (struct zfcp_adapter*) ;
 int zfcp_fc_post_event ;
 int zfcp_fc_scan_ports ;
 int zfcp_fc_sym_name_update ;
 int zfcp_print_sl ;
 scalar_t__ zfcp_qdio_setup (struct zfcp_adapter*) ;
 int zfcp_reqlist_alloc () ;
 int zfcp_scsi_adapter_register (struct zfcp_adapter*) ;
 scalar_t__ zfcp_setup_adapter_work_queue (struct zfcp_adapter*) ;
 int zfcp_sysfs_adapter_attrs ;

struct zfcp_adapter *zfcp_adapter_enqueue(struct ccw_device *ccw_device)
{
 struct zfcp_adapter *adapter;

 if (!get_device(&ccw_device->dev))
  return ERR_PTR(-ENODEV);

 adapter = kzalloc(sizeof(struct zfcp_adapter), GFP_KERNEL);
 if (!adapter) {
  put_device(&ccw_device->dev);
  return ERR_PTR(-ENOMEM);
 }

 kref_init(&adapter->ref);

 ccw_device->handler = ((void*)0);
 adapter->ccw_device = ccw_device;

 INIT_WORK(&adapter->stat_work, _zfcp_status_read_scheduler);
 INIT_DELAYED_WORK(&adapter->scan_work, zfcp_fc_scan_ports);
 INIT_WORK(&adapter->ns_up_work, zfcp_fc_sym_name_update);

 adapter->next_port_scan = jiffies;

 adapter->erp_action.adapter = adapter;

 if (zfcp_qdio_setup(adapter))
  goto failed;

 if (zfcp_allocate_low_mem_buffers(adapter))
  goto failed;

 adapter->req_list = zfcp_reqlist_alloc();
 if (!adapter->req_list)
  goto failed;

 if (zfcp_dbf_adapter_register(adapter))
  goto failed;

 if (zfcp_setup_adapter_work_queue(adapter))
  goto failed;

 if (zfcp_fc_gs_setup(adapter))
  goto failed;

 rwlock_init(&adapter->port_list_lock);
 INIT_LIST_HEAD(&adapter->port_list);

 INIT_LIST_HEAD(&adapter->events.list);
 INIT_WORK(&adapter->events.work, zfcp_fc_post_event);
 spin_lock_init(&adapter->events.list_lock);

 init_waitqueue_head(&adapter->erp_ready_wq);
 init_waitqueue_head(&adapter->erp_done_wqh);

 INIT_LIST_HEAD(&adapter->erp_ready_head);
 INIT_LIST_HEAD(&adapter->erp_running_head);

 rwlock_init(&adapter->erp_lock);
 rwlock_init(&adapter->abort_lock);

 if (zfcp_erp_thread_setup(adapter))
  goto failed;

 adapter->service_level.seq_print = zfcp_print_sl;

 dev_set_drvdata(&ccw_device->dev, adapter);

 if (sysfs_create_group(&ccw_device->dev.kobj,
          &zfcp_sysfs_adapter_attrs))
  goto failed;


 adapter->ccw_device->dev.dma_parms = &adapter->dma_parms;

 adapter->stat_read_buf_num = FSF_STATUS_READS_RECOM;

 if (!zfcp_scsi_adapter_register(adapter))
  return adapter;

failed:
 zfcp_adapter_unregister(adapter);
 return ERR_PTR(-ENOMEM);
}
