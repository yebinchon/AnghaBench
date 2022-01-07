
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_sfp_scn_s {int event; } ;
struct bfi_mbmsg_s {int dummy; } ;
struct bfa_sfp_s {int lock; int state; int data_valid; } ;
 int BFA_SFP_STATE_FAILED ;
 int BFA_SFP_STATE_INSERTED ;
 int BFA_SFP_STATE_REMOVED ;
 int BFA_SFP_STATE_UNSUPPORT ;
 int BFA_SFP_STATE_VALID ;
 int BFI_SFP_MEM_ALL ;
 int WARN_ON (int) ;
 int bfa_sfp_getdata (struct bfa_sfp_s*,int ) ;
 int bfa_sfp_scn_aen_post (struct bfa_sfp_s*,struct bfi_sfp_scn_s*) ;
 int bfa_trc (struct bfa_sfp_s*,int) ;

__attribute__((used)) static void
bfa_sfp_scn(struct bfa_sfp_s *sfp, struct bfi_mbmsg_s *msg)
{
 struct bfi_sfp_scn_s *rsp = (struct bfi_sfp_scn_s *) msg;

 switch (rsp->event) {
 case 132:
  sfp->state = BFA_SFP_STATE_INSERTED;
  sfp->data_valid = 0;
  bfa_sfp_scn_aen_post(sfp, rsp);
  break;
 case 130:
  sfp->state = BFA_SFP_STATE_REMOVED;
  sfp->data_valid = 0;
  bfa_sfp_scn_aen_post(sfp, rsp);
  break;
 case 133:
  sfp->state = BFA_SFP_STATE_FAILED;
  sfp->data_valid = 0;
  bfa_sfp_scn_aen_post(sfp, rsp);
  break;
 case 129:
  sfp->state = BFA_SFP_STATE_UNSUPPORT;
  bfa_sfp_scn_aen_post(sfp, rsp);
  if (!sfp->lock)
   bfa_sfp_getdata(sfp, BFI_SFP_MEM_ALL);
  break;
 case 131:
  bfa_sfp_scn_aen_post(sfp, rsp);
  break;
 case 128:
  sfp->state = BFA_SFP_STATE_VALID;
  if (!sfp->lock)
   bfa_sfp_getdata(sfp, BFI_SFP_MEM_ALL);
  break;
 default:
  bfa_trc(sfp, rsp->event);
  WARN_ON(1);
 }
}
