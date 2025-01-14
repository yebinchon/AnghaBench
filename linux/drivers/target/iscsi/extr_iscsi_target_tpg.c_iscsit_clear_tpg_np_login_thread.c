
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_tpg_np {TYPE_1__* tpg_np; } ;
struct iscsi_portal_group {int dummy; } ;
struct TYPE_2__ {int enabled; } ;


 int iscsit_reset_np_thread (TYPE_1__*,struct iscsi_tpg_np*,struct iscsi_portal_group*,int) ;
 int pr_err (char*) ;

__attribute__((used)) static void iscsit_clear_tpg_np_login_thread(
 struct iscsi_tpg_np *tpg_np,
 struct iscsi_portal_group *tpg,
 bool shutdown)
{
 if (!tpg_np->tpg_np) {
  pr_err("struct iscsi_tpg_np->tpg_np is NULL!\n");
  return;
 }

 if (shutdown)
  tpg_np->tpg_np->enabled = 0;
 iscsit_reset_np_thread(tpg_np->tpg_np, tpg_np, tpg, shutdown);
}
