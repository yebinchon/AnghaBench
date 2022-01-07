
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_session {int cmd_count; int cmd_list_wq; int sess_cmd_lock; int sess_cmd_list; int sess_acl_list; int sess_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;
 int percpu_ref_init (int *,int ,int ,int ) ;
 int spin_lock_init (int *) ;
 int target_release_sess_cmd_refcnt ;

int transport_init_session(struct se_session *se_sess)
{
 INIT_LIST_HEAD(&se_sess->sess_list);
 INIT_LIST_HEAD(&se_sess->sess_acl_list);
 INIT_LIST_HEAD(&se_sess->sess_cmd_list);
 spin_lock_init(&se_sess->sess_cmd_lock);
 init_waitqueue_head(&se_sess->cmd_list_wq);
 return percpu_ref_init(&se_sess->cmd_count,
          target_release_sess_cmd_refcnt, 0, GFP_KERNEL);
}
