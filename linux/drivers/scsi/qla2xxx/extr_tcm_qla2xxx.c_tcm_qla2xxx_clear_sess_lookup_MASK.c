#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tcm_qla2xxx_nacl {int dummy; } ;
struct tcm_qla2xxx_lport {int dummy; } ;
struct se_session {int dummy; } ;
struct fc_port {int /*<<< orphan*/  loop_id; int /*<<< orphan*/  d_id; struct se_session* se_sess; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tcm_qla2xxx_lport*,int /*<<< orphan*/ *,struct tcm_qla2xxx_nacl*,struct se_session*,struct fc_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tcm_qla2xxx_lport*,int /*<<< orphan*/ *,struct tcm_qla2xxx_nacl*,struct se_session*,struct fc_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct tcm_qla2xxx_lport *lport,
		struct tcm_qla2xxx_nacl *nacl, struct fc_port *sess)
{
	struct se_session *se_sess = sess->se_sess;

	FUNC2(lport, NULL, nacl, se_sess,
				     sess, FUNC0(sess->d_id));
	FUNC1(lport, NULL, nacl, se_sess,
				sess, sess->loop_id);
}