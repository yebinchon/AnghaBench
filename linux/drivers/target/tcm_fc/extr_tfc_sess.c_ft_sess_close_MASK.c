#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct se_session {struct ft_sess* fabric_sess_ptr; } ;
struct ft_sess {int port_id; TYPE_1__* tport; } ;
struct TYPE_2__ {int /*<<< orphan*/  lport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ft_sess*) ; 
 int /*<<< orphan*/  ft_lport_lock ; 
 int /*<<< orphan*/  FUNC2 (struct ft_sess*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct se_session *se_sess)
{
	struct ft_sess *sess = se_sess->fabric_sess_ptr;
	u32 port_id;

	FUNC3(&ft_lport_lock);
	port_id = sess->port_id;
	if (port_id == -1) {
		FUNC4(&ft_lport_lock);
		return;
	}
	FUNC0(sess->tport->lport, "port_id %x close session\n", port_id);
	FUNC2(sess);
	FUNC4(&ft_lport_lock);
	FUNC1(sess);
	/* XXX Send LOGO or PRLO */
	FUNC5();		/* let transport deregister happen */
}