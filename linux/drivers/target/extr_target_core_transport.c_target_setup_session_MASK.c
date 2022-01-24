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
struct se_session {int /*<<< orphan*/  se_node_acl; } ;
struct se_portal_group {int dummy; } ;
typedef  enum target_prot_op { ____Placeholder_target_prot_op } target_prot_op ;

/* Variables and functions */
 int EACCES ; 
 struct se_session* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct se_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct se_portal_group*,unsigned char*) ; 
 struct se_session* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct se_session*) ; 
 struct se_session* FUNC5 (unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct se_portal_group*,int /*<<< orphan*/ ,struct se_session*,void*) ; 

struct se_session *
FUNC7(struct se_portal_group *tpg,
		     unsigned int tag_num, unsigned int tag_size,
		     enum target_prot_op prot_op,
		     const char *initiatorname, void *private,
		     int (*callback)(struct se_portal_group *,
				     struct se_session *, void *))
{
	struct se_session *sess;

	/*
	 * If the fabric driver is using percpu-ida based pre allocation
	 * of I/O descriptor tags, go ahead and perform that setup now..
	 */
	if (tag_num != 0)
		sess = FUNC5(tag_num, tag_size, prot_op);
	else
		sess = FUNC3(prot_op);

	if (FUNC1(sess))
		return sess;

	sess->se_node_acl = FUNC2(tpg,
					(unsigned char *)initiatorname);
	if (!sess->se_node_acl) {
		FUNC4(sess);
		return FUNC0(-EACCES);
	}
	/*
	 * Go ahead and perform any remaining fabric setup that is
	 * required before transport_register_session().
	 */
	if (callback != NULL) {
		int rc = callback(tpg, sess, private);
		if (rc) {
			FUNC4(sess);
			return FUNC0(rc);
		}
	}

	FUNC6(tpg, sess->se_node_acl, sess, private);
	return sess;
}