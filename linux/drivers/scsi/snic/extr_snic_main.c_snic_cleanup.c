
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic {unsigned int intr_count; unsigned int wq_count; unsigned int cq_count; int * req_pool; int * intr; int * cq; int * wq; int vdev; } ;


 unsigned int SNIC_REQ_MAX_CACHES ;
 int mempool_destroy (int ) ;
 int snic_free_all_untagged_reqs (struct snic*) ;
 int snic_free_wq_buf ;
 int snic_fwcq_cmpl_handler (struct snic*,int) ;
 int snic_shutdown_scsi_cleanup (struct snic*) ;
 int snic_wq_cmpl_handler (struct snic*,int) ;
 int svnic_cq_clean (int *) ;
 int svnic_dev_disable (int ) ;
 int svnic_intr_clean (int *) ;
 int svnic_intr_mask (int *) ;
 int svnic_wq_clean (int *,int ) ;
 int svnic_wq_disable (int *) ;

__attribute__((used)) static int
snic_cleanup(struct snic *snic)
{
 unsigned int i;
 int ret;

 svnic_dev_disable(snic->vdev);
 for (i = 0; i < snic->intr_count; i++)
  svnic_intr_mask(&snic->intr[i]);

 for (i = 0; i < snic->wq_count; i++) {
  ret = svnic_wq_disable(&snic->wq[i]);
  if (ret)
   return ret;
 }


 snic_fwcq_cmpl_handler(snic, -1);

 snic_wq_cmpl_handler(snic, -1);


 for (i = 0; i < snic->wq_count; i++)
  svnic_wq_clean(&snic->wq[i], snic_free_wq_buf);

 for (i = 0; i < snic->cq_count; i++)
  svnic_cq_clean(&snic->cq[i]);

 for (i = 0; i < snic->intr_count; i++)
  svnic_intr_clean(&snic->intr[i]);


 snic_free_all_untagged_reqs(snic);


 snic_shutdown_scsi_cleanup(snic);

 for (i = 0; i < SNIC_REQ_MAX_CACHES; i++)
  mempool_destroy(snic->req_pool[i]);

 return 0;
}
