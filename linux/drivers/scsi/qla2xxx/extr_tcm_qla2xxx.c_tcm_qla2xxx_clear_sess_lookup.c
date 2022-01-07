
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcm_qla2xxx_nacl {int dummy; } ;
struct tcm_qla2xxx_lport {int dummy; } ;
struct se_session {int dummy; } ;
struct fc_port {int loop_id; int d_id; struct se_session* se_sess; } ;


 int port_id_to_be_id (int ) ;
 int tcm_qla2xxx_set_sess_by_loop_id (struct tcm_qla2xxx_lport*,int *,struct tcm_qla2xxx_nacl*,struct se_session*,struct fc_port*,int ) ;
 int tcm_qla2xxx_set_sess_by_s_id (struct tcm_qla2xxx_lport*,int *,struct tcm_qla2xxx_nacl*,struct se_session*,struct fc_port*,int ) ;

__attribute__((used)) static void tcm_qla2xxx_clear_sess_lookup(struct tcm_qla2xxx_lport *lport,
  struct tcm_qla2xxx_nacl *nacl, struct fc_port *sess)
{
 struct se_session *se_sess = sess->se_sess;

 tcm_qla2xxx_set_sess_by_s_id(lport, ((void*)0), nacl, se_sess,
         sess, port_id_to_be_id(sess->d_id));
 tcm_qla2xxx_set_sess_by_loop_id(lport, ((void*)0), nacl, se_sess,
    sess, sess->loop_id);
}
