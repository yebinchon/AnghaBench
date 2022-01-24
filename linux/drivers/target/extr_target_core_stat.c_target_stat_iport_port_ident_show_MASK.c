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
struct se_session {int dummy; } ;
struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_node_acl {char* initiatorname; int /*<<< orphan*/  nacl_sess_lock; struct se_portal_group* se_tpg; struct se_session* nacl_sess; } ;
struct se_lun_acl {struct se_node_acl* se_lun_nacl; } ;
struct config_item {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* sess_get_initiator_sid ) (struct se_session*,unsigned char*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct se_lun_acl* FUNC0 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct se_session*,unsigned char*,int) ; 

__attribute__((used)) static ssize_t FUNC6(struct config_item *item,
		char *page)
{
	struct se_lun_acl *lacl = FUNC0(item);
	struct se_node_acl *nacl = lacl->se_lun_nacl;
	struct se_session *se_sess;
	struct se_portal_group *tpg;
	ssize_t ret;
	unsigned char buf[64];

	FUNC3(&nacl->nacl_sess_lock);
	se_sess = nacl->nacl_sess;
	if (!se_sess) {
		FUNC4(&nacl->nacl_sess_lock);
		return -ENODEV;
	}

	tpg = nacl->se_tpg;
	/* scsiAttIntrPortName+scsiAttIntrPortIdentifier */
	FUNC1(buf, 0, 64);
	if (tpg->se_tpg_tfo->sess_get_initiator_sid != NULL)
		tpg->se_tpg_tfo->sess_get_initiator_sid(se_sess, buf, 64);

	ret = FUNC2(page, PAGE_SIZE, "%s+i+%s\n", nacl->initiatorname, buf);
	FUNC4(&nacl->nacl_sess_lock);
	return ret;
}