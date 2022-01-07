
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_tpg_np {int * tpg; int * tpg_np; } ;
struct iscsi_portal_group {int tpgt; TYPE_1__* tpg_tiqn; } ;
struct iscsi_np {TYPE_2__* np_transport; int np_sockaddr; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int tiqn; } ;


 int iscsit_clear_tpg_np_login_thread (struct iscsi_tpg_np*,struct iscsi_portal_group*,int) ;
 int iscsit_del_np (struct iscsi_np*) ;
 int kfree (struct iscsi_tpg_np*) ;
 int pr_debug (char*,int ,int *,int ,int ) ;

__attribute__((used)) static int iscsit_tpg_release_np(
 struct iscsi_tpg_np *tpg_np,
 struct iscsi_portal_group *tpg,
 struct iscsi_np *np)
{
 iscsit_clear_tpg_np_login_thread(tpg_np, tpg, 1);

 pr_debug("CORE[%s] - Removed Network Portal: %pISpc,%hu on %s\n",
  tpg->tpg_tiqn->tiqn, &np->np_sockaddr, tpg->tpgt,
  np->np_transport->name);

 tpg_np->tpg_np = ((void*)0);
 tpg_np->tpg = ((void*)0);
 kfree(tpg_np);



 return iscsit_del_np(np);
}
