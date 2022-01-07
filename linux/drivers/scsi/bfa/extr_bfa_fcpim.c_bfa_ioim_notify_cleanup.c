
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bfa_ioim_s {TYPE_3__* iosp; TYPE_4__* itnim; int qe; int hcb_qe; TYPE_1__* fcpim; } ;
struct TYPE_8__ {int delay_comp_q; scalar_t__ iotov_active; } ;
struct TYPE_7__ {TYPE_2__* tskim; } ;
struct TYPE_6__ {int wc; } ;
struct TYPE_5__ {scalar_t__ delay_comp; int ioim_comp_q; } ;


 int bfa_cb_dequeue (int *) ;
 int bfa_itnim_iodone (TYPE_4__*) ;
 int bfa_wc_down (int *) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;

__attribute__((used)) static void
bfa_ioim_notify_cleanup(struct bfa_ioim_s *ioim)
{




 list_del(&ioim->qe);
 list_add_tail(&ioim->qe, &ioim->fcpim->ioim_comp_q);

 if (!ioim->iosp->tskim) {
  if (ioim->fcpim->delay_comp && ioim->itnim->iotov_active) {
   bfa_cb_dequeue(&ioim->hcb_qe);
   list_del(&ioim->qe);
   list_add_tail(&ioim->qe, &ioim->itnim->delay_comp_q);
  }
  bfa_itnim_iodone(ioim->itnim);
 } else
  bfa_wc_down(&ioim->iosp->tskim->wc);
}
