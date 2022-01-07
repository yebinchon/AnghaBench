
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_2__ {int n_free_ioreq; } ;
struct csio_scsim {TYPE_1__ stats; int ioreq_freelist; } ;


 int list_splice_init (struct list_head*,int *) ;

__attribute__((used)) static inline void
csio_put_scsi_ioreq_list(struct csio_scsim *scm, struct list_head *reqlist,
    int n)
{
 list_splice_init(reqlist, &scm->ioreq_freelist);
 scm->stats.n_free_ioreq += n;
}
