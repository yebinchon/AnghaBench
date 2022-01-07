
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_2__ {int sm_list; } ;
struct csio_ioreq {TYPE_1__ sm; } ;


 int CSIO_SCSIE_ABORTED ;
 int csio_post_event (TYPE_1__*,int ) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static inline void
csio_scsi_aborted(struct csio_ioreq *ioreq, struct list_head *cbfn_q)
{
 csio_post_event(&ioreq->sm, CSIO_SCSIE_ABORTED);
 list_add_tail(&ioreq->sm.sm_list, cbfn_q);
}
