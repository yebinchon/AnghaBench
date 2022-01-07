
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wq_enet_desc {int dummy; } ;
struct snic_fw_req {int dummy; } ;
struct TYPE_2__ {int wq_enet_desc_count; int intr_timer_type; int intr_timer; } ;
struct snic {unsigned int wq_count; int cq_count; unsigned int intr_count; unsigned int err_intr_offset; int vdev; int shost; int stats; TYPE_1__ config; int * intr; int * cq; int * wq; } ;
struct cq_enet_wq_desc {int dummy; } ;
typedef enum vnic_dev_intr_mode { ____Placeholder_vnic_dev_intr_mode } vnic_dev_intr_mode ;


 int SNIC_BUG_ON (int) ;
 int SNIC_HOST_ERR (int ,char*,int) ;
 int SNIC_INFO (char*,...) ;
 int VNIC_DEV_INTR_MODE_INTX ;
 int VNIC_DEV_INTR_MODE_MSI ;
 int VNIC_DEV_INTR_MODE_MSIX ;
 int snic_free_vnic_res (struct snic*) ;
 int svnic_cq_alloc (int ,int *,unsigned int,int,int) ;
 int svnic_cq_init (int *,int ,int,int ,int ,int,int,int,int ,unsigned int,int ) ;
 int svnic_dev_get_intr_mode (int ) ;
 int svnic_dev_stats_clear (int ) ;
 int svnic_dev_stats_dump (int ,int *) ;
 int svnic_intr_alloc (int ,int *,unsigned int) ;
 int svnic_intr_init (int *,int ,int ,unsigned int) ;
 int svnic_wq_alloc (int ,int *,unsigned int,int,int) ;
 int svnic_wq_init (int *,unsigned int,unsigned int,unsigned int) ;

int
snic_alloc_vnic_res(struct snic *snic)
{
 enum vnic_dev_intr_mode intr_mode;
 unsigned int mask_on_assertion;
 unsigned int intr_offset;
 unsigned int err_intr_enable;
 unsigned int err_intr_offset;
 unsigned int i;
 int ret;

 intr_mode = svnic_dev_get_intr_mode(snic->vdev);

 SNIC_INFO("vNIC interrupt mode: %s\n",
    ((intr_mode == VNIC_DEV_INTR_MODE_INTX) ?
     "Legacy PCI INTx" :
     ((intr_mode == VNIC_DEV_INTR_MODE_MSI) ?
      "MSI" :
      ((intr_mode == VNIC_DEV_INTR_MODE_MSIX) ?
       "MSI-X" : "Unknown"))));


 SNIC_BUG_ON(intr_mode != VNIC_DEV_INTR_MODE_MSIX);

 SNIC_INFO("wq %d cq %d intr %d\n", snic->wq_count,
    snic->cq_count,
    snic->intr_count);



 for (i = 0; i < snic->wq_count; i++) {
  ret = svnic_wq_alloc(snic->vdev,
         &snic->wq[i],
         i,
         snic->config.wq_enet_desc_count,
         sizeof(struct wq_enet_desc));
  if (ret)
   goto error_cleanup;
 }


 for (i = 0; i < snic->wq_count; i++) {
  ret = svnic_cq_alloc(snic->vdev,
         &snic->cq[i],
         i,
         snic->config.wq_enet_desc_count,
         sizeof(struct cq_enet_wq_desc));
  if (ret)
   goto error_cleanup;
 }

 SNIC_BUG_ON(snic->cq_count != 2 * snic->wq_count);

 for (i = snic->wq_count; i < snic->cq_count; i++) {
  ret = svnic_cq_alloc(snic->vdev,
         &snic->cq[i],
         i,
         (snic->config.wq_enet_desc_count * 3),
         sizeof(struct snic_fw_req));
  if (ret)
   goto error_cleanup;
 }

 for (i = 0; i < snic->intr_count; i++) {
  ret = svnic_intr_alloc(snic->vdev, &snic->intr[i], i);
  if (ret)
   goto error_cleanup;
 }






 err_intr_enable = 1;
 err_intr_offset = snic->err_intr_offset;

 for (i = 0; i < snic->wq_count; i++) {
  svnic_wq_init(&snic->wq[i],
         i,
         err_intr_enable,
         err_intr_offset);
 }

 for (i = 0; i < snic->cq_count; i++) {
  intr_offset = i;

  svnic_cq_init(&snic->cq[i],
         0 ,
         1 ,
         0 ,
         0 ,
         1 ,
         1 ,
         1 ,
         0 ,
         intr_offset,
         0 );
 }





 SNIC_BUG_ON(intr_mode != VNIC_DEV_INTR_MODE_MSIX);
 mask_on_assertion = 1;

 for (i = 0; i < snic->intr_count; i++) {
  svnic_intr_init(&snic->intr[i],
    snic->config.intr_timer,
    snic->config.intr_timer_type,
    mask_on_assertion);
 }


 ret = svnic_dev_stats_dump(snic->vdev, &snic->stats);
 if (ret) {
  SNIC_HOST_ERR(snic->shost,
         "svnic_dev_stats_dump failed - x%x\n",
         ret);
  goto error_cleanup;
 }


 svnic_dev_stats_clear(snic->vdev);
 ret = 0;

 return ret;

error_cleanup:
 snic_free_vnic_res(snic);

 return ret;
}
