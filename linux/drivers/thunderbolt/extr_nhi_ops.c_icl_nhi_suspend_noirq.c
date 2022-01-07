
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_nhi {int dummy; } ;
typedef enum icl_lc_mailbox_cmd { ____Placeholder_icl_lc_mailbox_cmd } icl_lc_mailbox_cmd ;


 int ICL_LC_GO2SX ;
 int ICL_LC_GO2SX_NO_WAKE ;
 int ICL_LC_MAILBOX_TIMEOUT ;
 int icl_nhi_lc_mailbox_cmd (struct tb_nhi*,int) ;
 int icl_nhi_lc_mailbox_cmd_complete (struct tb_nhi*,int ) ;
 int icl_nhi_suspend (struct tb_nhi*) ;
 int pm_suspend_via_firmware () ;

__attribute__((used)) static int icl_nhi_suspend_noirq(struct tb_nhi *nhi, bool wakeup)
{
 enum icl_lc_mailbox_cmd cmd;

 if (!pm_suspend_via_firmware())
  return icl_nhi_suspend(nhi);

 cmd = wakeup ? ICL_LC_GO2SX : ICL_LC_GO2SX_NO_WAKE;
 icl_nhi_lc_mailbox_cmd(nhi, cmd);
 return icl_nhi_lc_mailbox_cmd_complete(nhi, ICL_LC_MAILBOX_TIMEOUT);
}
