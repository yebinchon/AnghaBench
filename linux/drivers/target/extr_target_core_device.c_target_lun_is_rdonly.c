
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_session {int se_node_acl; } ;
struct se_dev_entry {scalar_t__ lun_access_ro; } ;
struct se_cmd {int orig_fe_lun; struct se_session* se_sess; } ;


 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct se_dev_entry* target_nacl_find_deve (int ,int ) ;

bool target_lun_is_rdonly(struct se_cmd *cmd)
{
 struct se_session *se_sess = cmd->se_sess;
 struct se_dev_entry *deve;
 bool ret;

 rcu_read_lock();
 deve = target_nacl_find_deve(se_sess->se_node_acl, cmd->orig_fe_lun);
 ret = deve && deve->lun_access_ro;
 rcu_read_unlock();

 return ret;
}
