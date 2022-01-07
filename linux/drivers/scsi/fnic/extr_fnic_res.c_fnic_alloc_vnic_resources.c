
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wq_enet_desc {int dummy; } ;
struct rq_enet_desc {int dummy; } ;
struct TYPE_3__ {unsigned int wq_enet_desc_count; int wq_copy_desc_count; unsigned int rq_desc_count; int intr_timer_type; int intr_timer; } ;
struct fnic {unsigned int wq_copy_count; unsigned int raw_wq_count; unsigned int rq_count; unsigned int cq_count; unsigned int intr_count; unsigned int err_intr_offset; int vdev; TYPE_2__* lport; int stats; TYPE_1__ config; int * intr; int * cq; int * wq_copy; int * wq; int * rq; int legacy_pba; int wq_count; } ;
struct fcpio_host_req {int dummy; } ;
struct fcpio_fw_req {int dummy; } ;
struct cq_enet_wq_desc {int dummy; } ;
struct cq_enet_rq_desc {int dummy; } ;
typedef enum vnic_dev_intr_mode { ____Placeholder_vnic_dev_intr_mode } vnic_dev_intr_mode ;
struct TYPE_4__ {int host; } ;


 int ENODEV ;
 int KERN_ERR ;
 int KERN_INFO ;
 int RES_TYPE_INTR_PBA_LEGACY ;



 int fnic_free_vnic_resources (struct fnic*) ;
 int shost_printk (int ,int ,char*,...) ;
 int vnic_cq_alloc (int ,int *,unsigned int,unsigned int,int) ;
 int vnic_cq_init (int *,int ,int,int ,int ,int,int,int,int ,unsigned int,int ) ;
 int vnic_dev_get_intr_mode (int ) ;
 int vnic_dev_get_res (int ,int ,int ) ;
 int vnic_dev_stats_clear (int ) ;
 int vnic_dev_stats_dump (int ,int *) ;
 int vnic_intr_alloc (int ,int *,unsigned int) ;
 int vnic_intr_init (int *,int ,int ,unsigned int) ;
 int vnic_rq_alloc (int ,int *,unsigned int,unsigned int,int) ;
 int vnic_rq_init (int *,unsigned int,unsigned int,unsigned int) ;
 int vnic_wq_alloc (int ,int *,unsigned int,unsigned int,int) ;
 int vnic_wq_copy_alloc (int ,int *,unsigned int,int,int) ;
 int vnic_wq_copy_init (int *,int ,unsigned int,unsigned int) ;
 int vnic_wq_init (int *,unsigned int,unsigned int,unsigned int) ;

int fnic_alloc_vnic_resources(struct fnic *fnic)
{
 enum vnic_dev_intr_mode intr_mode;
 unsigned int mask_on_assertion;
 unsigned int interrupt_offset;
 unsigned int error_interrupt_enable;
 unsigned int error_interrupt_offset;
 unsigned int i, cq_index;
 unsigned int wq_copy_cq_desc_count;
 int err;

 intr_mode = vnic_dev_get_intr_mode(fnic->vdev);

 shost_printk(KERN_INFO, fnic->lport->host, "vNIC interrupt mode: %s\n",
       intr_mode == 130 ? "legacy PCI INTx" :
       intr_mode == 129 ? "MSI" :
       intr_mode == 128 ?
       "MSI-X" : "unknown");

 shost_printk(KERN_INFO, fnic->lport->host, "vNIC resources avail: "
       "wq %d cp_wq %d raw_wq %d rq %d cq %d intr %d\n",
       fnic->wq_count, fnic->wq_copy_count, fnic->raw_wq_count,
       fnic->rq_count, fnic->cq_count, fnic->intr_count);


 for (i = 0; i < fnic->raw_wq_count; i++) {
  err = vnic_wq_alloc(fnic->vdev, &fnic->wq[i], i,
   fnic->config.wq_enet_desc_count,
   sizeof(struct wq_enet_desc));
  if (err)
   goto err_out_cleanup;
 }


 for (i = 0; i < fnic->wq_copy_count; i++) {
  err = vnic_wq_copy_alloc(fnic->vdev, &fnic->wq_copy[i],
   (fnic->raw_wq_count + i),
   fnic->config.wq_copy_desc_count,
   sizeof(struct fcpio_host_req));
  if (err)
   goto err_out_cleanup;
 }


 for (i = 0; i < fnic->rq_count; i++) {
  err = vnic_rq_alloc(fnic->vdev, &fnic->rq[i], i,
   fnic->config.rq_desc_count,
   sizeof(struct rq_enet_desc));
  if (err)
   goto err_out_cleanup;
 }


 for (i = 0; i < fnic->rq_count; i++) {
  cq_index = i;
  err = vnic_cq_alloc(fnic->vdev,
   &fnic->cq[cq_index], cq_index,
   fnic->config.rq_desc_count,
   sizeof(struct cq_enet_rq_desc));
  if (err)
   goto err_out_cleanup;
 }


 for (i = 0; i < fnic->raw_wq_count; i++) {
  cq_index = fnic->rq_count + i;
  err = vnic_cq_alloc(fnic->vdev, &fnic->cq[cq_index], cq_index,
   fnic->config.wq_enet_desc_count,
   sizeof(struct cq_enet_wq_desc));
  if (err)
   goto err_out_cleanup;
 }


 wq_copy_cq_desc_count = (fnic->config.wq_copy_desc_count * 3);
 for (i = 0; i < fnic->wq_copy_count; i++) {
  cq_index = fnic->raw_wq_count + fnic->rq_count + i;
  err = vnic_cq_alloc(fnic->vdev, &fnic->cq[cq_index],
   cq_index,
   wq_copy_cq_desc_count,
   sizeof(struct fcpio_fw_req));
  if (err)
   goto err_out_cleanup;
 }

 for (i = 0; i < fnic->intr_count; i++) {
  err = vnic_intr_alloc(fnic->vdev, &fnic->intr[i], i);
  if (err)
   goto err_out_cleanup;
 }

 fnic->legacy_pba = vnic_dev_get_res(fnic->vdev,
    RES_TYPE_INTR_PBA_LEGACY, 0);

 if (!fnic->legacy_pba && intr_mode == 130) {
  shost_printk(KERN_ERR, fnic->lport->host,
        "Failed to hook legacy pba resource\n");
  err = -ENODEV;
  goto err_out_cleanup;
 }
 switch (intr_mode) {
 case 130:
 case 128:
  error_interrupt_enable = 1;
  error_interrupt_offset = fnic->err_intr_offset;
  break;
 default:
  error_interrupt_enable = 0;
  error_interrupt_offset = 0;
  break;
 }

 for (i = 0; i < fnic->rq_count; i++) {
  cq_index = i;
  vnic_rq_init(&fnic->rq[i],
        cq_index,
        error_interrupt_enable,
        error_interrupt_offset);
 }

 for (i = 0; i < fnic->raw_wq_count; i++) {
  cq_index = i + fnic->rq_count;
  vnic_wq_init(&fnic->wq[i],
        cq_index,
        error_interrupt_enable,
        error_interrupt_offset);
 }

 for (i = 0; i < fnic->wq_copy_count; i++) {
  vnic_wq_copy_init(&fnic->wq_copy[i],
      0 ,
      error_interrupt_enable,
      error_interrupt_offset);
 }

 for (i = 0; i < fnic->cq_count; i++) {

  switch (intr_mode) {
  case 128:
   interrupt_offset = i;
   break;
  default:
   interrupt_offset = 0;
   break;
  }

  vnic_cq_init(&fnic->cq[i],
   0 ,
   1 ,
   0 ,
   0 ,
   1 ,
   1 ,
   1 ,
   0 ,
   interrupt_offset,
   0 );
 }
 switch (intr_mode) {
 case 129:
 case 128:
  mask_on_assertion = 1;
  break;
 default:
  mask_on_assertion = 0;
  break;
 }

 for (i = 0; i < fnic->intr_count; i++) {
  vnic_intr_init(&fnic->intr[i],
   fnic->config.intr_timer,
   fnic->config.intr_timer_type,
   mask_on_assertion);
 }


 err = vnic_dev_stats_dump(fnic->vdev, &fnic->stats);
 if (err) {
  shost_printk(KERN_ERR, fnic->lport->host,
        "vnic_dev_stats_dump failed - x%x\n", err);
  goto err_out_cleanup;
 }


 vnic_dev_stats_clear(fnic->vdev);

 return 0;

err_out_cleanup:
 fnic_free_vnic_resources(fnic);

 return err;
}
