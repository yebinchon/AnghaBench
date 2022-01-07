
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_tpg_np {int tpg_np_kref; } ;
struct iscsi_tiqn {int dummy; } ;
struct iscsi_portal_group {int np_login_sem; struct iscsi_tiqn* tpg_tiqn; } ;
struct iscsi_np {int dummy; } ;


 int iscsit_login_kref_put ;
 int iscsit_put_tiqn_for_login (struct iscsi_tiqn*) ;
 int kref_put (int *,int ) ;
 int up (int *) ;

int iscsit_deaccess_np(struct iscsi_np *np, struct iscsi_portal_group *tpg,
         struct iscsi_tpg_np *tpg_np)
{
 struct iscsi_tiqn *tiqn = tpg->tpg_tiqn;

 up(&tpg->np_login_sem);

 if (tpg_np)
  kref_put(&tpg_np->tpg_np_kref, iscsit_login_kref_put);

 if (tiqn)
  iscsit_put_tiqn_for_login(tiqn);

 return 0;
}
