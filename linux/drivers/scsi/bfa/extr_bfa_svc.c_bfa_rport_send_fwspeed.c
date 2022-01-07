
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct bfa_rport_speed_req_s {int mh; scalar_t__ speed; int fw_handle; } ;
struct TYPE_2__ {scalar_t__ speed; } ;
struct bfa_rport_s {int bfa; TYPE_1__ rport_info; int fw_handle; } ;
typedef int bfa_boolean_t ;


 int BFA_FALSE ;
 int BFA_REQQ_RPORT ;
 int BFA_TRUE ;
 int BFI_MC_RPORT ;
 int BFI_RPORT_H2I_SET_SPEED_REQ ;
 int bfa_fn_lpu (int ) ;
 struct bfa_rport_speed_req_s* bfa_reqq_next (int ,int ) ;
 int bfa_reqq_produce (int ,int ,int ) ;
 int bfa_trc (int ,scalar_t__) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;

__attribute__((used)) static bfa_boolean_t
bfa_rport_send_fwspeed(struct bfa_rport_s *rp)
{
 struct bfa_rport_speed_req_s *m;




 m = bfa_reqq_next(rp->bfa, BFA_REQQ_RPORT);
 if (!m) {
  bfa_trc(rp->bfa, rp->rport_info.speed);
  return BFA_FALSE;
 }

 bfi_h2i_set(m->mh, BFI_MC_RPORT, BFI_RPORT_H2I_SET_SPEED_REQ,
   bfa_fn_lpu(rp->bfa));
 m->fw_handle = rp->fw_handle;
 m->speed = (u8)rp->rport_info.speed;




 bfa_reqq_produce(rp->bfa, BFA_REQQ_RPORT, m->mh);
 return BFA_TRUE;
}
