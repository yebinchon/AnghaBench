
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_fcport_req_s {int mh; scalar_t__ msgtag; } ;
struct bfa_fcport_s {int bfa; scalar_t__ msgtag; int reqq_wait; } ;
typedef int bfa_boolean_t ;


 int BFA_FALSE ;
 int BFA_REQQ_PORT ;
 int BFA_TRUE ;
 int BFI_FCPORT_H2I_DISABLE_REQ ;
 int BFI_MC_FCPORT ;
 int bfa_fn_lpu (int ) ;
 struct bfi_fcport_req_s* bfa_reqq_next (int ,int ) ;
 int bfa_reqq_produce (int ,int ,int ) ;
 int bfa_reqq_wait (int ,int ,int *) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;

__attribute__((used)) static bfa_boolean_t
bfa_fcport_send_disable(struct bfa_fcport_s *fcport)
{
 struct bfi_fcport_req_s *m;





 fcport->msgtag++;




 m = bfa_reqq_next(fcport->bfa, BFA_REQQ_PORT);
 if (!m) {
  bfa_reqq_wait(fcport->bfa, BFA_REQQ_PORT,
       &fcport->reqq_wait);
  return BFA_FALSE;
 }

 bfi_h2i_set(m->mh, BFI_MC_FCPORT, BFI_FCPORT_H2I_DISABLE_REQ,
   bfa_fn_lpu(fcport->bfa));
 m->msgtag = fcport->msgtag;




 bfa_reqq_produce(fcport->bfa, BFA_REQQ_PORT, m->mh);

 return BFA_TRUE;
}
