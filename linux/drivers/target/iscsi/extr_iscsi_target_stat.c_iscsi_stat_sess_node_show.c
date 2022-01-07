
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_session {struct iscsi_session* fabric_sess_ptr; } ;
struct se_node_acl {int nacl_sess_lock; struct se_session* nacl_sess; } ;
struct iscsi_session {TYPE_1__* sess_ops; } ;
struct iscsi_node_acl {struct se_node_acl se_node_acl; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ SessionType; } ;


 int ISCSI_NODE_INDEX ;
 int PAGE_SIZE ;
 struct iscsi_node_acl* iscsi_stat_nacl (struct config_item*) ;
 int snprintf (char*,int ,char*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static ssize_t iscsi_stat_sess_node_show(struct config_item *item, char *page)
{
 struct iscsi_node_acl *acl = iscsi_stat_nacl(item);
 struct se_node_acl *se_nacl = &acl->se_node_acl;
 struct iscsi_session *sess;
 struct se_session *se_sess;
 ssize_t ret = 0;

 spin_lock_bh(&se_nacl->nacl_sess_lock);
 se_sess = se_nacl->nacl_sess;
 if (se_sess) {
  sess = se_sess->fabric_sess_ptr;
  if (sess)
   ret = snprintf(page, PAGE_SIZE, "%u\n",
    sess->sess_ops->SessionType ? 0 : ISCSI_NODE_INDEX);
 }
 spin_unlock_bh(&se_nacl->nacl_sess_lock);

 return ret;
}
