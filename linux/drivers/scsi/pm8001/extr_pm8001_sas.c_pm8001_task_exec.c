
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_status_struct {void* stat; void* resp; } ;
struct sas_task {int task_proto; int num_scatter; int data_dir; int scatter; int task_state_lock; int task_state_flags; struct pm8001_ccb_info* lldd_task; int (* task_done ) (struct sas_task*) ;struct task_status_struct task_status; struct domain_device* dev; } ;
struct pm8001_tmf_task {int dummy; } ;
struct pm8001_port {int port_attached; } ;
struct pm8001_hba_info {int lock; int dev; struct pm8001_ccb_info* ccb_info; struct pm8001_port* port; scalar_t__ controller_fatal_error; } ;
struct pm8001_device {int running_req; } ;
struct pm8001_ccb_info {int n_elem; int ccb_tag; struct pm8001_device* device; struct sas_task* task; } ;
struct domain_device {scalar_t__ dev_type; struct pm8001_device* lldd_dev; int port; } ;
typedef int gfp_t ;


 scalar_t__ DEV_IS_GONE (struct pm8001_device*) ;
 int EINVAL ;
 int ENOMEM ;
 int KERN_ERR ;
 int PM8001_IO_DBG (struct pm8001_hba_info*,int ) ;
 void* SAS_PHY_DOWN ;




 scalar_t__ SAS_SATA_DEV ;
 int SAS_TASK_AT_INITIATOR ;
 void* SAS_TASK_UNDELIVERED ;
 int dev_printk (int ,int ,char*,int) ;
 int dma_map_sg (int ,int ,int,int ) ;
 int dma_unmap_sg (int ,int ,int,int ) ;
 struct pm8001_hba_info* pm8001_find_ha_by_dev (struct domain_device*) ;
 int pm8001_printk (char*,...) ;
 int pm8001_tag_alloc (struct pm8001_hba_info*,int*) ;
 int pm8001_tag_free (struct pm8001_hba_info*,int) ;
 int pm8001_task_prep_ata (struct pm8001_hba_info*,struct pm8001_ccb_info*) ;
 int pm8001_task_prep_smp (struct pm8001_hba_info*,struct pm8001_ccb_info*) ;
 int pm8001_task_prep_ssp (struct pm8001_hba_info*,struct pm8001_ccb_info*) ;
 int pm8001_task_prep_ssp_tm (struct pm8001_hba_info*,struct pm8001_ccb_info*,struct pm8001_tmf_task*) ;
 size_t sas_find_local_port_id (struct domain_device*) ;
 scalar_t__ sas_protocol_ata (int) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct sas_task*) ;
 int stub2 (struct sas_task*) ;
 int stub3 (struct sas_task*) ;
 int stub4 (struct sas_task*) ;

__attribute__((used)) static int pm8001_task_exec(struct sas_task *task,
 gfp_t gfp_flags, int is_tmf, struct pm8001_tmf_task *tmf)
{
 struct domain_device *dev = task->dev;
 struct pm8001_hba_info *pm8001_ha;
 struct pm8001_device *pm8001_dev;
 struct pm8001_port *port = ((void*)0);
 struct sas_task *t = task;
 struct pm8001_ccb_info *ccb;
 u32 tag = 0xdeadbeef, rc, n_elem = 0;
 unsigned long flags = 0;

 if (!dev->port) {
  struct task_status_struct *tsm = &t->task_status;
  tsm->resp = SAS_TASK_UNDELIVERED;
  tsm->stat = SAS_PHY_DOWN;
  if (dev->dev_type != SAS_SATA_DEV)
   t->task_done(t);
  return 0;
 }
 pm8001_ha = pm8001_find_ha_by_dev(task->dev);
 if (pm8001_ha->controller_fatal_error) {
  struct task_status_struct *ts = &t->task_status;

  ts->resp = SAS_TASK_UNDELIVERED;
  t->task_done(t);
  return 0;
 }
 PM8001_IO_DBG(pm8001_ha, pm8001_printk("pm8001_task_exec device \n "));
 spin_lock_irqsave(&pm8001_ha->lock, flags);
 do {
  dev = t->dev;
  pm8001_dev = dev->lldd_dev;
  port = &pm8001_ha->port[sas_find_local_port_id(dev)];
  if (DEV_IS_GONE(pm8001_dev) || !port->port_attached) {
   if (sas_protocol_ata(t->task_proto)) {
    struct task_status_struct *ts = &t->task_status;
    ts->resp = SAS_TASK_UNDELIVERED;
    ts->stat = SAS_PHY_DOWN;

    spin_unlock_irqrestore(&pm8001_ha->lock, flags);
    t->task_done(t);
    spin_lock_irqsave(&pm8001_ha->lock, flags);
    continue;
   } else {
    struct task_status_struct *ts = &t->task_status;
    ts->resp = SAS_TASK_UNDELIVERED;
    ts->stat = SAS_PHY_DOWN;
    t->task_done(t);
    continue;
   }
  }
  rc = pm8001_tag_alloc(pm8001_ha, &tag);
  if (rc)
   goto err_out;
  ccb = &pm8001_ha->ccb_info[tag];

  if (!sas_protocol_ata(t->task_proto)) {
   if (t->num_scatter) {
    n_elem = dma_map_sg(pm8001_ha->dev,
     t->scatter,
     t->num_scatter,
     t->data_dir);
    if (!n_elem) {
     rc = -ENOMEM;
     goto err_out_tag;
    }
   }
  } else {
   n_elem = t->num_scatter;
  }

  t->lldd_task = ccb;
  ccb->n_elem = n_elem;
  ccb->ccb_tag = tag;
  ccb->task = t;
  ccb->device = pm8001_dev;
  switch (t->task_proto) {
  case 130:
   rc = pm8001_task_prep_smp(pm8001_ha, ccb);
   break;
  case 129:
   if (is_tmf)
    rc = pm8001_task_prep_ssp_tm(pm8001_ha,
     ccb, tmf);
   else
    rc = pm8001_task_prep_ssp(pm8001_ha, ccb);
   break;
  case 131:
  case 128:
   rc = pm8001_task_prep_ata(pm8001_ha, ccb);
   break;
  default:
   dev_printk(KERN_ERR, pm8001_ha->dev,
    "unknown sas_task proto: 0x%x\n",
    t->task_proto);
   rc = -EINVAL;
   break;
  }

  if (rc) {
   PM8001_IO_DBG(pm8001_ha,
    pm8001_printk("rc is %x\n", rc));
   goto err_out_tag;
  }

  spin_lock(&t->task_state_lock);
  t->task_state_flags |= SAS_TASK_AT_INITIATOR;
  spin_unlock(&t->task_state_lock);
  pm8001_dev->running_req++;
 } while (0);
 rc = 0;
 goto out_done;

err_out_tag:
 pm8001_tag_free(pm8001_ha, tag);
err_out:
 dev_printk(KERN_ERR, pm8001_ha->dev, "pm8001 exec failed[%d]!\n", rc);
 if (!sas_protocol_ata(t->task_proto))
  if (n_elem)
   dma_unmap_sg(pm8001_ha->dev, t->scatter, t->num_scatter,
    t->data_dir);
out_done:
 spin_unlock_irqrestore(&pm8001_ha->lock, flags);
 return rc;
}
