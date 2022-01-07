
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_tiqn {int dummy; } ;
struct iscsi_portal_group {struct iscsi_tiqn* tpg_tiqn; } ;
struct iscsi_conn {struct iscsi_portal_group* tpg; } ;



struct iscsi_tiqn *iscsit_snmp_get_tiqn(struct iscsi_conn *conn)
{
 struct iscsi_portal_group *tpg;

 if (!conn)
  return ((void*)0);

 tpg = conn->tpg;
 if (!tpg)
  return ((void*)0);

 if (!tpg->tpg_tiqn)
  return ((void*)0);

 return tpg->tpg_tiqn;
}
