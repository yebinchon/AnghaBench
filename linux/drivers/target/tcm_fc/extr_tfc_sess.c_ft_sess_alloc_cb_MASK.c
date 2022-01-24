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
struct se_session {int dummy; } ;
struct se_portal_group {int dummy; } ;
struct hlist_head {int dummy; } ;
struct ft_tport {int /*<<< orphan*/  sess_count; int /*<<< orphan*/  lport; struct hlist_head* hash; } ;
struct ft_sess {int /*<<< orphan*/  hash; int /*<<< orphan*/  port_id; struct ft_tport* tport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct ft_sess*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct hlist_head*) ; 

__attribute__((used)) static int FUNC3(struct se_portal_group *se_tpg,
			    struct se_session *se_sess, void *p)
{
	struct ft_sess *sess = p;
	struct ft_tport *tport = sess->tport;
	struct hlist_head *head = &tport->hash[FUNC1(sess->port_id)];

	FUNC0(tport->lport, "port_id %x sess %p\n", sess->port_id, sess);
	FUNC2(&sess->hash, head);
	tport->sess_count++;

	return 0;
}