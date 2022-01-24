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
struct se_session {struct iscsi_session* fabric_sess_ptr; } ;
struct se_node_acl {int /*<<< orphan*/  nacl_sess_lock; struct se_session* nacl_sess; } ;
struct iscsi_session {int session_index; } ;
struct iscsi_node_acl {struct se_node_acl se_node_acl; } ;
struct config_item {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct iscsi_node_acl* FUNC0 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct config_item *item, char *page)
{
	struct iscsi_node_acl *acl = FUNC0(item);
	struct se_node_acl *se_nacl = &acl->se_node_acl;
	struct iscsi_session *sess;
	struct se_session *se_sess;
	ssize_t ret = 0;

	FUNC2(&se_nacl->nacl_sess_lock);
	se_sess = se_nacl->nacl_sess;
	if (se_sess) {
		sess = se_sess->fabric_sess_ptr;
		if (sess)
			ret = FUNC1(page, PAGE_SIZE, "%u\n",
					sess->session_index);
	}
	FUNC3(&se_nacl->nacl_sess_lock);

	return ret;
}