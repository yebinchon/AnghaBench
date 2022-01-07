
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct se_session {int dummy; } ;
struct se_portal_group {int dummy; } ;
struct se_node_acl {int dummy; } ;
struct TYPE_6__ {struct TYPE_6__* se_node_acl; struct TYPE_6__* se_tpg; struct TYPE_6__* nacl_sess; int acl_sess_list; int acl_list; int * se_tpg_tfo; int tpg_sess_list; int acl_node_list; int se_tpg_node; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int WQ_MEM_RECLAIM ;
 int alloc_workqueue (char*,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int pr_err (char*) ;
 int transport_init_session (TYPE_1__*) ;
 TYPE_1__ xcopy_pt_nacl ;
 TYPE_1__ xcopy_pt_sess ;
 int xcopy_pt_tfo ;
 TYPE_1__ xcopy_pt_tpg ;
 int xcopy_wq ;

int target_xcopy_setup_pt(void)
{
 int ret;

 xcopy_wq = alloc_workqueue("xcopy_wq", WQ_MEM_RECLAIM, 0);
 if (!xcopy_wq) {
  pr_err("Unable to allocate xcopy_wq\n");
  return -ENOMEM;
 }

 memset(&xcopy_pt_tpg, 0, sizeof(struct se_portal_group));
 INIT_LIST_HEAD(&xcopy_pt_tpg.se_tpg_node);
 INIT_LIST_HEAD(&xcopy_pt_tpg.acl_node_list);
 INIT_LIST_HEAD(&xcopy_pt_tpg.tpg_sess_list);

 xcopy_pt_tpg.se_tpg_tfo = &xcopy_pt_tfo;

 memset(&xcopy_pt_nacl, 0, sizeof(struct se_node_acl));
 INIT_LIST_HEAD(&xcopy_pt_nacl.acl_list);
 INIT_LIST_HEAD(&xcopy_pt_nacl.acl_sess_list);
 memset(&xcopy_pt_sess, 0, sizeof(struct se_session));
 ret = transport_init_session(&xcopy_pt_sess);
 if (ret < 0)
  return ret;

 xcopy_pt_nacl.se_tpg = &xcopy_pt_tpg;
 xcopy_pt_nacl.nacl_sess = &xcopy_pt_sess;

 xcopy_pt_sess.se_tpg = &xcopy_pt_tpg;
 xcopy_pt_sess.se_node_acl = &xcopy_pt_nacl;

 return 0;
}
