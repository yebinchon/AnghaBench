
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Scsi_Host {int max_lun; int this_id; int irq; TYPE_1__* hostt; int sg_tablesize; int cmd_per_lun; int can_queue; int host_no; } ;
struct NCR5380_hostdata {int id_mask; int id_higher_mask; int flags; unsigned long poll_loops; int info; int base; int io_port; int work_q; int main_task; int disconnected; int unissued; int autosense; int * sensing; int * connected; int lock; scalar_t__ dma_len; scalar_t__* busy; struct Scsi_Host* host; } ;
struct TYPE_2__ {char* name; } ;


 int ENOMEM ;
 int FLAG_DMA_FIXUP ;
 int FLAG_NO_PSEUDO_DMA ;
 int FLAG_TOSHIBA_DELAY ;
 int ICR_BASE ;
 int INITIATOR_COMMAND_REG ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int MODE_REG ;
 int MR_BASE ;
 unsigned long NCR5380_REG_POLL_TIME ;
 int NCR5380_main ;
 int NCR5380_read (int ) ;
 int NCR5380_write (int ,int ) ;
 int SELECT_ENABLE_REG ;
 int STATUS_REG ;
 int TARGET_COMMAND_REG ;
 int WQ_MEM_RECLAIM ;
 int WQ_UNBOUND ;
 int alloc_workqueue (char*,int,int,int ) ;
 int cpu_relax () ;
 int jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;
 struct NCR5380_hostdata* shost_priv (struct Scsi_Host*) ;
 int snprintf (int ,int,char*,char*,int,int ,int ,int ,int ,int ,int,char*,char*,char*) ;
 int spin_lock_init (int *) ;
 scalar_t__ time_is_after_jiffies (unsigned long) ;

__attribute__((used)) static int NCR5380_init(struct Scsi_Host *instance, int flags)
{
 struct NCR5380_hostdata *hostdata = shost_priv(instance);
 int i;
 unsigned long deadline;
 unsigned long accesses_per_ms;

 instance->max_lun = 7;

 hostdata->host = instance;
 hostdata->id_mask = 1 << instance->this_id;
 hostdata->id_higher_mask = 0;
 for (i = hostdata->id_mask; i <= 0x80; i <<= 1)
  if (i > hostdata->id_mask)
   hostdata->id_higher_mask |= i;
 for (i = 0; i < 8; ++i)
  hostdata->busy[i] = 0;
 hostdata->dma_len = 0;

 spin_lock_init(&hostdata->lock);
 hostdata->connected = ((void*)0);
 hostdata->sensing = ((void*)0);
 INIT_LIST_HEAD(&hostdata->autosense);
 INIT_LIST_HEAD(&hostdata->unissued);
 INIT_LIST_HEAD(&hostdata->disconnected);

 hostdata->flags = flags;

 INIT_WORK(&hostdata->main_task, NCR5380_main);
 hostdata->work_q = alloc_workqueue("ncr5380_%d",
                         WQ_UNBOUND | WQ_MEM_RECLAIM,
                         1, instance->host_no);
 if (!hostdata->work_q)
  return -ENOMEM;

 snprintf(hostdata->info, sizeof(hostdata->info),
  "%s, irq %d, io_port 0x%lx, base 0x%lx, can_queue %d, cmd_per_lun %d, sg_tablesize %d, this_id %d, flags { %s%s%s}",
  instance->hostt->name, instance->irq, hostdata->io_port,
  hostdata->base, instance->can_queue, instance->cmd_per_lun,
  instance->sg_tablesize, instance->this_id,
  hostdata->flags & FLAG_DMA_FIXUP ? "DMA_FIXUP " : "",
  hostdata->flags & FLAG_NO_PSEUDO_DMA ? "NO_PSEUDO_DMA " : "",
  hostdata->flags & FLAG_TOSHIBA_DELAY ? "TOSHIBA_DELAY " : "");

 NCR5380_write(INITIATOR_COMMAND_REG, ICR_BASE);
 NCR5380_write(MODE_REG, MR_BASE);
 NCR5380_write(TARGET_COMMAND_REG, 0);
 NCR5380_write(SELECT_ENABLE_REG, 0);


 i = 0;
 deadline = jiffies + 1;
 do {
  cpu_relax();
 } while (time_is_after_jiffies(deadline));
 deadline += msecs_to_jiffies(256);
 do {
  NCR5380_read(STATUS_REG);
  ++i;
  cpu_relax();
 } while (time_is_after_jiffies(deadline));
 accesses_per_ms = i / 256;
 hostdata->poll_loops = NCR5380_REG_POLL_TIME * accesses_per_ms / 2;

 return 0;
}
