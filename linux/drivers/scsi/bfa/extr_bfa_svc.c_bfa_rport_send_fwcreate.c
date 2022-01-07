
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct bfi_rport_create_req_s {int mh; int cisc; int vf_id; int vf_en; int fc_class; int local_pid; int lp_fwtag; int pid; int max_frmsz; int bfa_handle; } ;
struct TYPE_2__ {int cisc; int vf_id; int vf_en; int fc_class; int local_pid; scalar_t__ lp_tag; int pid; int max_frmsz; } ;
struct bfa_rport_s {int bfa; TYPE_1__ rport_info; int rport_tag; int reqq_wait; } ;
typedef int bfa_boolean_t ;


 int BFA_FALSE ;
 int BFA_REQQ_RPORT ;
 int BFA_TRUE ;
 int BFI_MC_RPORT ;
 int BFI_RPORT_H2I_CREATE_REQ ;
 int bfa_fn_lpu (int ) ;
 int bfa_lps_get_fwtag (int ,int ) ;
 struct bfi_rport_create_req_s* bfa_reqq_next (int ,int ) ;
 int bfa_reqq_produce (int ,int ,int ) ;
 int bfa_reqq_wait (int ,int ,int *) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;
 int cpu_to_be16 (int ) ;

__attribute__((used)) static bfa_boolean_t
bfa_rport_send_fwcreate(struct bfa_rport_s *rp)
{
 struct bfi_rport_create_req_s *m;




 m = bfa_reqq_next(rp->bfa, BFA_REQQ_RPORT);
 if (!m) {
  bfa_reqq_wait(rp->bfa, BFA_REQQ_RPORT, &rp->reqq_wait);
  return BFA_FALSE;
 }

 bfi_h2i_set(m->mh, BFI_MC_RPORT, BFI_RPORT_H2I_CREATE_REQ,
   bfa_fn_lpu(rp->bfa));
 m->bfa_handle = rp->rport_tag;
 m->max_frmsz = cpu_to_be16(rp->rport_info.max_frmsz);
 m->pid = rp->rport_info.pid;
 m->lp_fwtag = bfa_lps_get_fwtag(rp->bfa, (u8)rp->rport_info.lp_tag);
 m->local_pid = rp->rport_info.local_pid;
 m->fc_class = rp->rport_info.fc_class;
 m->vf_en = rp->rport_info.vf_en;
 m->vf_id = rp->rport_info.vf_id;
 m->cisc = rp->rport_info.cisc;




 bfa_reqq_produce(rp->bfa, BFA_REQQ_RPORT, m->mh);
 return BFA_TRUE;
}
