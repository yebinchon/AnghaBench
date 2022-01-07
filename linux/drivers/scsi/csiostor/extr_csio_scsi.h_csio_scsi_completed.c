
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_2__ {int sm_list; } ;
struct csio_ioreq {TYPE_1__ sm; } ;


 int CSIO_SCSIE_COMPLETED ;
 scalar_t__ csio_list_deleted (int *) ;
 int csio_post_event (TYPE_1__*,int ) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static inline void
csio_scsi_completed(struct csio_ioreq *ioreq, struct list_head *cbfn_q)
{
 csio_post_event(&ioreq->sm, CSIO_SCSIE_COMPLETED);
 if (csio_list_deleted(&ioreq->sm.sm_list))
  list_add_tail(&ioreq->sm.sm_list, cbfn_q);
}
