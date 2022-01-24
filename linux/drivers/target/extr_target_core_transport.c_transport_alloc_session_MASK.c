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
struct se_session {int sup_prot_ops; } ;
typedef  enum target_prot_op { ____Placeholder_target_prot_op } target_prot_op ;

/* Variables and functions */
 int ENOMEM ; 
 struct se_session* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct se_session*) ; 
 struct se_session* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  se_sess_cache ; 
 int FUNC4 (struct se_session*) ; 

struct se_session *FUNC5(enum target_prot_op sup_prot_ops)
{
	struct se_session *se_sess;
	int ret;

	se_sess = FUNC2(se_sess_cache, GFP_KERNEL);
	if (!se_sess) {
		FUNC3("Unable to allocate struct se_session from"
				" se_sess_cache\n");
		return FUNC0(-ENOMEM);
	}
	ret = FUNC4(se_sess);
	if (ret < 0) {
		FUNC1(se_sess_cache, se_sess);
		return FUNC0(ret);
	}
	se_sess->sup_prot_ops = sup_prot_ops;

	return se_sess;
}