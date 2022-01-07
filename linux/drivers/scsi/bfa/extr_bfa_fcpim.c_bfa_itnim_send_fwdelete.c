
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfi_itn_delete_req_s {int mh; int fw_handle; } ;
struct bfa_itnim_s {int reqq; int bfa; TYPE_1__* rport; int reqq_wait; } ;
typedef int bfa_boolean_t ;
struct TYPE_2__ {int fw_handle; } ;


 int BFA_FALSE ;
 int BFA_TRUE ;
 int BFI_ITN_H2I_DELETE_REQ ;
 int BFI_MC_ITN ;
 int bfa_fn_lpu (int ) ;
 struct bfi_itn_delete_req_s* bfa_reqq_next (int ,int ) ;
 int bfa_reqq_produce (int ,int ,int ) ;
 int bfa_reqq_wait (int ,int ,int *) ;
 int bfa_stats (struct bfa_itnim_s*,int ) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;
 int fw_delete ;

__attribute__((used)) static bfa_boolean_t
bfa_itnim_send_fwdelete(struct bfa_itnim_s *itnim)
{
 struct bfi_itn_delete_req_s *m;




 m = bfa_reqq_next(itnim->bfa, itnim->reqq);
 if (!m) {
  bfa_reqq_wait(itnim->bfa, itnim->reqq, &itnim->reqq_wait);
  return BFA_FALSE;
 }

 bfi_h2i_set(m->mh, BFI_MC_ITN, BFI_ITN_H2I_DELETE_REQ,
   bfa_fn_lpu(itnim->bfa));
 m->fw_handle = itnim->rport->fw_handle;
 bfa_stats(itnim, fw_delete);




 bfa_reqq_produce(itnim->bfa, itnim->reqq, m->mh);
 return BFA_TRUE;
}
