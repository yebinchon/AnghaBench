
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bfa_iocfc_s {TYPE_2__* bfa; } ;
struct TYPE_4__ {int init_hcb_qe; int op_status; } ;
struct TYPE_5__ {TYPE_1__ iocfc; } ;


 int BFA_STATUS_OK ;
 int bfa_cb_queue (TYPE_2__*,int *,int ,TYPE_2__*) ;
 int bfa_iocfc_init_cb ;

__attribute__((used)) static void
bfa_iocfc_sm_init_cfg_done_entry(struct bfa_iocfc_s *iocfc)
{
 iocfc->bfa->iocfc.op_status = BFA_STATUS_OK;
 bfa_cb_queue(iocfc->bfa, &iocfc->bfa->iocfc.init_hcb_qe,
       bfa_iocfc_init_cb, iocfc->bfa);
}
