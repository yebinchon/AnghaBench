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
typedef  enum target_prot_op { ____Placeholder_target_prot_op } target_prot_op ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct se_session* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct se_session*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 struct se_session* FUNC3 (int) ; 
 int FUNC4 (struct se_session*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct se_session*) ; 

__attribute__((used)) static struct se_session *
FUNC6(unsigned int tag_num, unsigned int tag_size,
			    enum target_prot_op sup_prot_ops)
{
	struct se_session *se_sess;
	int rc;

	if (tag_num != 0 && !tag_size) {
		FUNC2("init_session_tags called with percpu-ida tag_num:"
		       " %u, but zero tag_size\n", tag_num);
		return FUNC0(-EINVAL);
	}
	if (!tag_num && tag_size) {
		FUNC2("init_session_tags called with percpu-ida tag_size:"
		       " %u, but zero tag_num\n", tag_size);
		return FUNC0(-EINVAL);
	}

	se_sess = FUNC3(sup_prot_ops);
	if (FUNC1(se_sess))
		return se_sess;

	rc = FUNC4(se_sess, tag_num, tag_size);
	if (rc < 0) {
		FUNC5(se_sess);
		return FUNC0(-ENOMEM);
	}

	return se_sess;
}