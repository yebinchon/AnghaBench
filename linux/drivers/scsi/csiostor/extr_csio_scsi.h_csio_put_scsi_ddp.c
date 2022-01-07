
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_scsim {int ddp_freelist; } ;
struct csio_dma_buf {int list; } ;


 int CSIO_INC_STATS (struct csio_scsim*,int ) ;
 int list_add_tail (int *,int *) ;
 int n_free_ddp ;

__attribute__((used)) static inline void
csio_put_scsi_ddp(struct csio_scsim *scm, struct csio_dma_buf *ddp)
{
 list_add_tail(&ddp->list, &scm->ddp_freelist);
 CSIO_INC_STATS(scm, n_free_ddp);
}
