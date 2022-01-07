
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_rport_delete_req_s {int mh; int fw_handle; } ;
struct bfa_rport_s {int bfa; int fw_handle; int reqq_wait; } ;
typedef int bfa_boolean_t ;


 int BFA_FALSE ;
 int BFA_REQQ_RPORT ;
 int BFA_TRUE ;
 int BFI_MC_RPORT ;
 int BFI_RPORT_H2I_DELETE_REQ ;
 int bfa_fn_lpu (int ) ;
 struct bfi_rport_delete_req_s* bfa_reqq_next (int ,int ) ;
 int bfa_reqq_produce (int ,int ,int ) ;
 int bfa_reqq_wait (int ,int ,int *) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;

__attribute__((used)) static bfa_boolean_t
bfa_rport_send_fwdelete(struct bfa_rport_s *rp)
{
 struct bfi_rport_delete_req_s *m;




 m = bfa_reqq_next(rp->bfa, BFA_REQQ_RPORT);
 if (!m) {
  bfa_reqq_wait(rp->bfa, BFA_REQQ_RPORT, &rp->reqq_wait);
  return BFA_FALSE;
 }

 bfi_h2i_set(m->mh, BFI_MC_RPORT, BFI_RPORT_H2I_DELETE_REQ,
   bfa_fn_lpu(rp->bfa));
 m->fw_handle = rp->fw_handle;




 bfa_reqq_produce(rp->bfa, BFA_REQQ_RPORT, m->mh);
 return BFA_TRUE;
}
