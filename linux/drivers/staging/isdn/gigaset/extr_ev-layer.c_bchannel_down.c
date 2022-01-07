
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bc_state {int chstate; } ;


 int CHS_B_UP ;
 int CHS_D_UP ;
 int CHS_NOTIFY_LL ;
 int gigaset_bcs_reinit (struct bc_state*) ;
 int gigaset_free_channel (struct bc_state*) ;
 int gigaset_isdn_hupB (struct bc_state*) ;
 int gigaset_isdn_hupD (struct bc_state*) ;

__attribute__((used)) static void bchannel_down(struct bc_state *bcs)
{
 if (bcs->chstate & CHS_B_UP) {
  bcs->chstate &= ~CHS_B_UP;
  gigaset_isdn_hupB(bcs);
 }

 if (bcs->chstate & (CHS_D_UP | CHS_NOTIFY_LL)) {
  bcs->chstate &= ~(CHS_D_UP | CHS_NOTIFY_LL);
  gigaset_isdn_hupD(bcs);
 }

 gigaset_free_channel(bcs);

 gigaset_bcs_reinit(bcs);
}
