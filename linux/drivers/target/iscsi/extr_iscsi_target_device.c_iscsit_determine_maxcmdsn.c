
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct se_node_acl {scalar_t__ queue_depth; } ;
struct iscsi_session {int max_cmd_sn; scalar_t__ cmdsn_window; TYPE_2__* se_sess; TYPE_1__* sess_ops; } ;
struct TYPE_4__ {struct se_node_acl* se_node_acl; } ;
struct TYPE_3__ {scalar_t__ SessionType; } ;


 int atomic_add (scalar_t__,int *) ;

void iscsit_determine_maxcmdsn(struct iscsi_session *sess)
{
 struct se_node_acl *se_nacl;







 if (sess->sess_ops->SessionType)
  return;

 se_nacl = sess->se_sess->se_node_acl;







 sess->cmdsn_window = se_nacl->queue_depth;
 atomic_add(se_nacl->queue_depth - 1, &sess->max_cmd_sn);
}
