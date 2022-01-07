
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_tskim_abortreq_s {int mh; int tsk_tag; } ;
struct bfa_tskim_s {int bfa; int tsk_tag; struct bfa_itnim_s* itnim; } ;
struct bfa_itnim_s {int reqq; } ;
typedef int bfa_boolean_t ;


 int BFA_FALSE ;
 int BFA_TRUE ;
 int BFI_MC_TSKIM ;
 int BFI_TSKIM_H2I_ABORT_REQ ;
 int bfa_fn_lpu (int ) ;
 struct bfi_tskim_abortreq_s* bfa_reqq_next (int ,int ) ;
 int bfa_reqq_produce (int ,int ,int ) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;
 int cpu_to_be16 (int ) ;

__attribute__((used)) static bfa_boolean_t
bfa_tskim_send_abort(struct bfa_tskim_s *tskim)
{
 struct bfa_itnim_s *itnim = tskim->itnim;
 struct bfi_tskim_abortreq_s *m;




 m = bfa_reqq_next(tskim->bfa, itnim->reqq);
 if (!m)
  return BFA_FALSE;




 bfi_h2i_set(m->mh, BFI_MC_TSKIM, BFI_TSKIM_H2I_ABORT_REQ,
   bfa_fn_lpu(tskim->bfa));

 m->tsk_tag = cpu_to_be16(tskim->tsk_tag);




 bfa_reqq_produce(tskim->bfa, itnim->reqq, m->mh);
 return BFA_TRUE;
}
