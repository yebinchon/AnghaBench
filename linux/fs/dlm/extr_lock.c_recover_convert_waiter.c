
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int h_nodeid; } ;
struct dlm_message {TYPE_1__ m_header; int m_result; int m_type; int m_flags; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {scalar_t__ lkb_grmode; scalar_t__ lkb_rqmode; int lkb_flags; int lkb_resource; int lkb_nodeid; } ;


 int DLM_IFL_RESEND ;
 int DLM_IFL_STUB_MS ;
 scalar_t__ DLM_LOCK_IV ;
 int DLM_MSG_CONVERT_REPLY ;
 int EINPROGRESS ;
 int RSB_RECOVER_CONVERT ;
 int _receive_convert_reply (struct dlm_lkb*,struct dlm_message*) ;
 int hold_lkb (struct dlm_lkb*) ;
 int memset (struct dlm_message*,int ,int) ;
 scalar_t__ middle_conversion (struct dlm_lkb*) ;
 int rsb_set_flag (int ,int ) ;
 int unhold_lkb (struct dlm_lkb*) ;

__attribute__((used)) static void recover_convert_waiter(struct dlm_ls *ls, struct dlm_lkb *lkb,
       struct dlm_message *ms_stub)
{
 if (middle_conversion(lkb)) {
  hold_lkb(lkb);
  memset(ms_stub, 0, sizeof(struct dlm_message));
  ms_stub->m_flags = DLM_IFL_STUB_MS;
  ms_stub->m_type = DLM_MSG_CONVERT_REPLY;
  ms_stub->m_result = -EINPROGRESS;
  ms_stub->m_header.h_nodeid = lkb->lkb_nodeid;
  _receive_convert_reply(lkb, ms_stub);


  lkb->lkb_grmode = DLM_LOCK_IV;
  rsb_set_flag(lkb->lkb_resource, RSB_RECOVER_CONVERT);
  unhold_lkb(lkb);

 } else if (lkb->lkb_rqmode >= lkb->lkb_grmode) {
  lkb->lkb_flags |= DLM_IFL_RESEND;
 }



}
