
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct bfa_mbox_cmd_s {int msg; } ;
struct TYPE_2__ {int hfn_mbox_cmd; } ;
struct bfa_ioc_mbox_mod_s {int cmd_q; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; struct bfa_ioc_mbox_mod_s mbox_mod; } ;


 int bfa_ioc_mbox_send (struct bfa_ioc_s*,int ,int) ;
 int bfa_q_deq (int *,struct bfa_mbox_cmd_s**) ;
 scalar_t__ list_empty (int *) ;
 scalar_t__ readl (int ) ;

__attribute__((used)) static void
bfa_ioc_mbox_poll(struct bfa_ioc_s *ioc)
{
 struct bfa_ioc_mbox_mod_s *mod = &ioc->mbox_mod;
 struct bfa_mbox_cmd_s *cmd;
 u32 stat;




 if (list_empty(&mod->cmd_q))
  return;




 stat = readl(ioc->ioc_regs.hfn_mbox_cmd);
 if (stat)
  return;




 bfa_q_deq(&mod->cmd_q, &cmd);
 bfa_ioc_mbox_send(ioc, cmd->msg, sizeof(cmd->msg));
}
