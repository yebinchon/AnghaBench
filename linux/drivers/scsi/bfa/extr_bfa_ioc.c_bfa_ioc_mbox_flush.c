
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_mbox_cmd_s {int dummy; } ;
struct bfa_ioc_mbox_mod_s {int cmd_q; } ;
struct bfa_ioc_s {struct bfa_ioc_mbox_mod_s mbox_mod; } ;


 int bfa_q_deq (int *,struct bfa_mbox_cmd_s**) ;
 int list_empty (int *) ;

__attribute__((used)) static void
bfa_ioc_mbox_flush(struct bfa_ioc_s *ioc)
{
 struct bfa_ioc_mbox_mod_s *mod = &ioc->mbox_mod;
 struct bfa_mbox_cmd_s *cmd;

 while (!list_empty(&mod->cmd_q))
  bfa_q_deq(&mod->cmd_q, &cmd);
}
