
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
struct scsi_host_template {scalar_t__ supported_mode; int dma_boundary; scalar_t__ virt_boundary_mask; scalar_t__ max_segment_size; scalar_t__ max_sectors; scalar_t__ max_host_blocked; int eh_host_reset_handler; int no_write_same; scalar_t__ unchecked_isa_dma; int cmd_per_lun; int sg_prot_tablesize; int sg_tablesize; int can_queue; int this_id; } ;
struct TYPE_3__ {int groups; int * class; struct TYPE_3__* parent; int * type; int * bus; } ;
struct Scsi_Host {int host_no; int dma_channel; int max_id; int max_lun; int max_cmd_len; int eh_deadline; scalar_t__ active_mode; int dma_boundary; int ehandler; struct scsi_host_template* hostt; int tmf_work_q; TYPE_1__ shost_dev; TYPE_1__ shost_gendev; scalar_t__ virt_boundary_mask; scalar_t__ max_segment_size; scalar_t__ max_sectors; scalar_t__ max_host_blocked; int no_write_same; scalar_t__ unchecked_isa_dma; int cmd_per_lun; int sg_prot_tablesize; int sg_tablesize; int can_queue; int this_id; int * transportt; scalar_t__ max_channel; int scan_mutex; int host_wait; int starved_list; int eh_cmd_q; int __targets; int __devices; int shost_state; int * host_lock; int default_lock; } ;
typedef int gfp_t ;


 scalar_t__ BLK_MAX_SEGMENT_SIZE ;
 int GFP_KERNEL ;
 int HZ ;
 int INIT_LIST_HEAD (int *) ;
 int INT_MAX ;
 scalar_t__ IS_ERR (int ) ;
 int KERN_WARNING ;
 scalar_t__ MODE_INITIATOR ;
 scalar_t__ MODE_UNKNOWN ;
 int PTR_ERR (int ) ;
 scalar_t__ SCSI_DEFAULT_HOST_BLOCKED ;
 scalar_t__ SCSI_DEFAULT_MAX_SECTORS ;
 int SHOST_CREATED ;
 int WQ_MEM_RECLAIM ;
 int WQ_UNBOUND ;
 int __GFP_DMA ;
 int alloc_workqueue (char*,int,int,int) ;
 int blank_transport_template ;
 int dev_set_name (TYPE_1__*,char*,int) ;
 int device_initialize (TYPE_1__*) ;
 int host_index_ida ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct Scsi_Host*) ;
 int kthread_run (int ,struct Scsi_Host*,char*,int) ;
 int kthread_stop (int ) ;
 struct Scsi_Host* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int scsi_bus_type ;
 int scsi_error_handler ;
 int scsi_host_type ;
 int scsi_proc_hostdir_add (struct scsi_host_template*) ;
 int scsi_sysfs_shost_attr_groups ;
 int shost_class ;
 int shost_eh_deadline ;
 int shost_printk (int ,struct Scsi_Host*,char*,...) ;
 int spin_lock_init (int *) ;

struct Scsi_Host *scsi_host_alloc(struct scsi_host_template *sht, int privsize)
{
 struct Scsi_Host *shost;
 gfp_t gfp_mask = GFP_KERNEL;
 int index;

 if (sht->unchecked_isa_dma && privsize)
  gfp_mask |= __GFP_DMA;

 shost = kzalloc(sizeof(struct Scsi_Host) + privsize, gfp_mask);
 if (!shost)
  return ((void*)0);

 shost->host_lock = &shost->default_lock;
 spin_lock_init(shost->host_lock);
 shost->shost_state = SHOST_CREATED;
 INIT_LIST_HEAD(&shost->__devices);
 INIT_LIST_HEAD(&shost->__targets);
 INIT_LIST_HEAD(&shost->eh_cmd_q);
 INIT_LIST_HEAD(&shost->starved_list);
 init_waitqueue_head(&shost->host_wait);
 mutex_init(&shost->scan_mutex);

 index = ida_simple_get(&host_index_ida, 0, 0, GFP_KERNEL);
 if (index < 0)
  goto fail_kfree;
 shost->host_no = index;

 shost->dma_channel = 0xff;


 shost->max_channel = 0;
 shost->max_id = 8;
 shost->max_lun = 8;


 shost->transportt = &blank_transport_template;







 shost->max_cmd_len = 12;
 shost->hostt = sht;
 shost->this_id = sht->this_id;
 shost->can_queue = sht->can_queue;
 shost->sg_tablesize = sht->sg_tablesize;
 shost->sg_prot_tablesize = sht->sg_prot_tablesize;
 shost->cmd_per_lun = sht->cmd_per_lun;
 shost->unchecked_isa_dma = sht->unchecked_isa_dma;
 shost->no_write_same = sht->no_write_same;

 if (shost_eh_deadline == -1 || !sht->eh_host_reset_handler)
  shost->eh_deadline = -1;
 else if ((ulong) shost_eh_deadline * HZ > INT_MAX) {
  shost_printk(KERN_WARNING, shost,
        "eh_deadline %u too large, setting to %u\n",
        shost_eh_deadline, INT_MAX / HZ);
  shost->eh_deadline = INT_MAX;
 } else
  shost->eh_deadline = shost_eh_deadline * HZ;

 if (sht->supported_mode == MODE_UNKNOWN)

  shost->active_mode = MODE_INITIATOR;
 else
  shost->active_mode = sht->supported_mode;

 if (sht->max_host_blocked)
  shost->max_host_blocked = sht->max_host_blocked;
 else
  shost->max_host_blocked = SCSI_DEFAULT_HOST_BLOCKED;





 if (sht->max_sectors)
  shost->max_sectors = sht->max_sectors;
 else
  shost->max_sectors = SCSI_DEFAULT_MAX_SECTORS;

 if (sht->max_segment_size)
  shost->max_segment_size = sht->max_segment_size;
 else
  shost->max_segment_size = BLK_MAX_SEGMENT_SIZE;




 if (sht->dma_boundary)
  shost->dma_boundary = sht->dma_boundary;
 else
  shost->dma_boundary = 0xffffffff;

 if (sht->virt_boundary_mask)
  shost->virt_boundary_mask = sht->virt_boundary_mask;

 device_initialize(&shost->shost_gendev);
 dev_set_name(&shost->shost_gendev, "host%d", shost->host_no);
 shost->shost_gendev.bus = &scsi_bus_type;
 shost->shost_gendev.type = &scsi_host_type;

 device_initialize(&shost->shost_dev);
 shost->shost_dev.parent = &shost->shost_gendev;
 shost->shost_dev.class = &shost_class;
 dev_set_name(&shost->shost_dev, "host%d", shost->host_no);
 shost->shost_dev.groups = scsi_sysfs_shost_attr_groups;

 shost->ehandler = kthread_run(scsi_error_handler, shost,
   "scsi_eh_%d", shost->host_no);
 if (IS_ERR(shost->ehandler)) {
  shost_printk(KERN_WARNING, shost,
   "error handler thread failed to spawn, error = %ld\n",
   PTR_ERR(shost->ehandler));
  goto fail_index_remove;
 }

 shost->tmf_work_q = alloc_workqueue("scsi_tmf_%d",
         WQ_UNBOUND | WQ_MEM_RECLAIM,
        1, shost->host_no);
 if (!shost->tmf_work_q) {
  shost_printk(KERN_WARNING, shost,
        "failed to create tmf workq\n");
  goto fail_kthread;
 }
 scsi_proc_hostdir_add(shost->hostt);
 return shost;

 fail_kthread:
 kthread_stop(shost->ehandler);
 fail_index_remove:
 ida_simple_remove(&host_index_ida, shost->host_no);
 fail_kfree:
 kfree(shost);
 return ((void*)0);
}
