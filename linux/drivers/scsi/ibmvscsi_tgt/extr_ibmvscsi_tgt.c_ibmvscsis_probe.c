
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
struct vio_device_id {int dummy; } ;
struct vio_dev {char* name; int dev; int irq; int unit_address; } ;
struct TYPE_11__ {struct scsi_info* ldata; } ;
struct TYPE_10__ {long partition_number; } ;
struct TYPE_9__ {int unit_id; int partition_num; int partition_name; TYPE_2__* window; } ;
struct TYPE_7__ {char* tport_name; } ;
struct scsi_info {char* eye; int list; TYPE_5__ target; int work_task; struct scsi_info* map_buf; scalar_t__ map_ioba; int work_q; int state; int dev; int unconfig; int wait_idle; TYPE_4__ client_data; TYPE_3__ dds; int intr_lock; int request_limit; TYPE_1__ tport; int active_q; int waiting_rsp; int schedule_q; struct vio_dev* dma_dev; } ;
struct TYPE_8__ {long liobn; } ;


 int DMA_BIDIRECTIONAL ;
 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int H_GET_PARTNER_INFO ;
 long H_SUCCESS ;
 int IBMVSCSIS_NAMELEN ;
 int INITIAL_SRP_LIMIT ;
 int INIT_LIST_HEAD (int *) ;
 size_t LOCAL ;
 int PAGE_SIZE ;
 size_t REMOTE ;
 int SRP_MAX_IU_LEN ;
 int WAIT_ENABLED ;
 long be64_to_cpu (int) ;
 int create_workqueue (char*) ;
 int destroy_workqueue (int ) ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,...) ;
 char* dev_name (int *) ;
 int dev_set_drvdata (int *,struct scsi_info*) ;
 scalar_t__ dma_map_single (int *,struct scsi_info*,int,int ) ;
 scalar_t__ dma_mapping_error (int *,scalar_t__) ;
 int dma_unmap_single (int *,scalar_t__,int,int ) ;
 long h_vioctl (int ,int ,int,int ,int ,int ,int ) ;
 int ibmvscsis_alloc_cmds (struct scsi_info*,int ) ;
 int ibmvscsis_alloctimer (struct scsi_info*) ;
 int ibmvscsis_create_command_q (struct scsi_info*,int) ;
 int ibmvscsis_destroy_command_q (struct scsi_info*) ;
 int ibmvscsis_dev_list ;
 int ibmvscsis_dev_lock ;
 int ibmvscsis_free_cmds (struct scsi_info*) ;
 int ibmvscsis_freetimer (struct scsi_info*) ;
 int ibmvscsis_handle_crq ;
 int ibmvscsis_interrupt ;
 int ibmvscsis_unregister_command_q (struct scsi_info*) ;
 int init_completion (int *) ;
 int kfree (struct scsi_info*) ;
 void* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int partition_name ;
 int partition_number ;
 int read_dma_window (struct scsi_info*) ;
 int request_irq (int ,int ,int ,char*,struct scsi_info*) ;
 int snprintf (char*,int,char*,char*) ;
 int spin_lock_bh (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock_bh (int *) ;
 int srp_target_alloc (TYPE_5__*,int *,int ,int ) ;
 int srp_target_free (TYPE_5__*) ;
 int strscpy (int ,int ,int) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int ibmvscsis_probe(struct vio_dev *vdev,
      const struct vio_device_id *id)
{
 struct scsi_info *vscsi;
 int rc = 0;
 long hrc = 0;
 char wq_name[24];

 vscsi = kzalloc(sizeof(*vscsi), GFP_KERNEL);
 if (!vscsi) {
  rc = -ENOMEM;
  dev_err(&vdev->dev, "probe: allocation of adapter failed\n");
  return rc;
 }

 vscsi->dma_dev = vdev;
 vscsi->dev = vdev->dev;
 INIT_LIST_HEAD(&vscsi->schedule_q);
 INIT_LIST_HEAD(&vscsi->waiting_rsp);
 INIT_LIST_HEAD(&vscsi->active_q);

 snprintf(vscsi->tport.tport_name, IBMVSCSIS_NAMELEN, "%s",
   dev_name(&vdev->dev));

 dev_dbg(&vscsi->dev, "probe tport_name: %s\n", vscsi->tport.tport_name);

 rc = read_dma_window(vscsi);
 if (rc)
  goto free_adapter;
 dev_dbg(&vscsi->dev, "Probe: liobn 0x%x, riobn 0x%x\n",
  vscsi->dds.window[LOCAL].liobn,
  vscsi->dds.window[REMOTE].liobn);

 snprintf(vscsi->eye, sizeof(vscsi->eye), "VSCSI %s", vdev->name);

 vscsi->dds.unit_id = vdev->unit_address;
 strscpy(vscsi->dds.partition_name, partition_name,
  sizeof(vscsi->dds.partition_name));
 vscsi->dds.partition_num = partition_number;

 spin_lock_bh(&ibmvscsis_dev_lock);
 list_add_tail(&vscsi->list, &ibmvscsis_dev_list);
 spin_unlock_bh(&ibmvscsis_dev_lock);





 vscsi->request_limit = INITIAL_SRP_LIMIT;
 rc = srp_target_alloc(&vscsi->target, &vdev->dev, vscsi->request_limit,
         SRP_MAX_IU_LEN);
 if (rc)
  goto rem_list;

 vscsi->target.ldata = vscsi;

 rc = ibmvscsis_alloc_cmds(vscsi, vscsi->request_limit);
 if (rc) {
  dev_err(&vscsi->dev, "alloc_cmds failed, rc %d, num %d\n",
   rc, vscsi->request_limit);
  goto free_target;
 }





 spin_lock_init(&vscsi->intr_lock);

 rc = ibmvscsis_alloctimer(vscsi);
 if (rc) {
  dev_err(&vscsi->dev, "probe: alloctimer failed, rc %d\n", rc);
  goto free_cmds;
 }

 rc = ibmvscsis_create_command_q(vscsi, 256);
 if (rc) {
  dev_err(&vscsi->dev, "probe: create_command_q failed, rc %d\n",
   rc);
  goto free_timer;
 }

 vscsi->map_buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 if (!vscsi->map_buf) {
  rc = -ENOMEM;
  dev_err(&vscsi->dev, "probe: allocating cmd buffer failed\n");
  goto destroy_queue;
 }

 vscsi->map_ioba = dma_map_single(&vdev->dev, vscsi->map_buf, PAGE_SIZE,
      DMA_BIDIRECTIONAL);
 if (dma_mapping_error(&vdev->dev, vscsi->map_ioba)) {
  rc = -ENOMEM;
  dev_err(&vscsi->dev, "probe: error mapping command buffer\n");
  goto free_buf;
 }

 hrc = h_vioctl(vscsi->dds.unit_id, H_GET_PARTNER_INFO,
         (u64)vscsi->map_ioba | ((u64)PAGE_SIZE << 32), 0, 0, 0,
         0);
 if (hrc == H_SUCCESS)
  vscsi->client_data.partition_number =
   be64_to_cpu(*(u64 *)vscsi->map_buf);





 dev_dbg(&vscsi->dev, "probe hrc %ld, client partition num %d\n",
  hrc, vscsi->client_data.partition_number);

 tasklet_init(&vscsi->work_task, ibmvscsis_handle_crq,
       (unsigned long)vscsi);

 init_completion(&vscsi->wait_idle);
 init_completion(&vscsi->unconfig);

 snprintf(wq_name, 24, "ibmvscsis%s", dev_name(&vdev->dev));
 vscsi->work_q = create_workqueue(wq_name);
 if (!vscsi->work_q) {
  rc = -ENOMEM;
  dev_err(&vscsi->dev, "create_workqueue failed\n");
  goto unmap_buf;
 }

 rc = request_irq(vdev->irq, ibmvscsis_interrupt, 0, "ibmvscsis", vscsi);
 if (rc) {
  rc = -EPERM;
  dev_err(&vscsi->dev, "probe: request_irq failed, rc %d\n", rc);
  goto destroy_WQ;
 }

 vscsi->state = WAIT_ENABLED;

 dev_set_drvdata(&vdev->dev, vscsi);

 return 0;

destroy_WQ:
 destroy_workqueue(vscsi->work_q);
unmap_buf:
 dma_unmap_single(&vdev->dev, vscsi->map_ioba, PAGE_SIZE,
    DMA_BIDIRECTIONAL);
free_buf:
 kfree(vscsi->map_buf);
destroy_queue:
 tasklet_kill(&vscsi->work_task);
 ibmvscsis_unregister_command_q(vscsi);
 ibmvscsis_destroy_command_q(vscsi);
free_timer:
 ibmvscsis_freetimer(vscsi);
free_cmds:
 ibmvscsis_free_cmds(vscsi);
free_target:
 srp_target_free(&vscsi->target);
rem_list:
 spin_lock_bh(&ibmvscsis_dev_lock);
 list_del(&vscsi->list);
 spin_unlock_bh(&ibmvscsis_dev_lock);
free_adapter:
 kfree(vscsi);

 return rc;
}
