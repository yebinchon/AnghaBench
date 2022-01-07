
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cb_reqd; } ;
struct bfa_s {TYPE_1__ iocfc; int plog; } ;


 int BFA_PL_EID_MISC ;
 int BFA_PL_MID_HAL ;
 int BFA_TRUE ;
 int IOCFC_E_ENABLE ;
 int bfa_fsm_send_event (TYPE_1__*,int ) ;
 int bfa_plog_str (int ,int ,int ,int ,char*) ;

void
bfa_iocfc_enable(struct bfa_s *bfa)
{
 bfa_plog_str(bfa->plog, BFA_PL_MID_HAL, BFA_PL_EID_MISC, 0,
       "IOC Enable");
 bfa->iocfc.cb_reqd = BFA_TRUE;
 bfa_fsm_send_event(&bfa->iocfc, IOCFC_E_ENABLE);
}
