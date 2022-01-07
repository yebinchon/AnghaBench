
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csio_scsim {int ioreq_freelist; } ;
struct TYPE_2__ {int sm_list; } ;
struct csio_ioreq {TYPE_1__ sm; } ;


 int CSIO_INC_STATS (struct csio_scsim*,int ) ;
 int list_add_tail (int *,int *) ;
 int n_free_ioreq ;

__attribute__((used)) static inline void
csio_put_scsi_ioreq(struct csio_scsim *scm, struct csio_ioreq *ioreq)
{
 list_add_tail(&ioreq->sm.sm_list, &scm->ioreq_freelist);
 CSIO_INC_STATS(scm, n_free_ioreq);
}
