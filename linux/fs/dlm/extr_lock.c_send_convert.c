
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dlm_rsb {TYPE_1__* res_ls; } ;
struct dlm_lkb {int dummy; } ;
struct TYPE_4__ {scalar_t__ m_result; int m_type; int m_flags; } ;
struct TYPE_3__ {TYPE_2__ ls_stub_ms; } ;


 int DLM_IFL_STUB_MS ;
 int DLM_MSG_CONVERT ;
 int DLM_MSG_CONVERT_REPLY ;
 int __receive_convert_reply (struct dlm_rsb*,struct dlm_lkb*,TYPE_2__*) ;
 scalar_t__ down_conversion (struct dlm_lkb*) ;
 int remove_from_waiters (struct dlm_lkb*,int ) ;
 int send_common (struct dlm_rsb*,struct dlm_lkb*,int ) ;

__attribute__((used)) static int send_convert(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
 int error;

 error = send_common(r, lkb, DLM_MSG_CONVERT);


 if (!error && down_conversion(lkb)) {
  remove_from_waiters(lkb, DLM_MSG_CONVERT_REPLY);
  r->res_ls->ls_stub_ms.m_flags = DLM_IFL_STUB_MS;
  r->res_ls->ls_stub_ms.m_type = DLM_MSG_CONVERT_REPLY;
  r->res_ls->ls_stub_ms.m_result = 0;
  __receive_convert_reply(r, lkb, &r->res_ls->ls_stub_ms);
 }

 return error;
}
