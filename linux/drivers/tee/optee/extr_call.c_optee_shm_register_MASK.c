#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct tee_shm {int dummy; } ;
struct tee_context {int dummy; } ;
struct page {int dummy; } ;
struct optee_msg_arg {scalar_t__ ret; TYPE_3__* params; int /*<<< orphan*/  cmd; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
struct TYPE_4__ {unsigned long shm_ref; int buf_ptr; int /*<<< orphan*/  size; } ;
struct TYPE_5__ {TYPE_1__ tmem; } ;
struct TYPE_6__ {int attr; TYPE_2__ u; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct tee_shm*) ; 
 int OPTEE_MSG_ATTR_NONCONTIG ; 
 int OPTEE_MSG_ATTR_TYPE_TMEM_OUTPUT ; 
 int /*<<< orphan*/  OPTEE_MSG_CMD_REGISTER_SHM ; 
 int OPTEE_MSG_NONCONTIG_PAGE_SIZE ; 
 int FUNC1 (struct tee_shm*) ; 
 scalar_t__ TEEC_SUCCESS ; 
 int FUNC2 (unsigned long,size_t) ; 
 struct tee_shm* FUNC3 (struct tee_context*,int,struct optee_msg_arg**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (struct tee_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct page**,size_t,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct tee_shm*) ; 
 int FUNC9 (struct tee_shm*) ; 
 int /*<<< orphan*/  FUNC10 (struct tee_shm*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct tee_context *ctx, struct tee_shm *shm,
		       struct page **pages, size_t num_pages,
		       unsigned long start)
{
	struct tee_shm *shm_arg = NULL;
	struct optee_msg_arg *msg_arg;
	u64 *pages_list;
	phys_addr_t msg_parg;
	int rc;

	if (!num_pages)
		return -EINVAL;

	rc = FUNC2(start, num_pages);
	if (rc)
		return rc;

	pages_list = FUNC4(num_pages);
	if (!pages_list)
		return -ENOMEM;

	shm_arg = FUNC3(ctx, 1, &msg_arg, &msg_parg);
	if (FUNC0(shm_arg)) {
		rc = FUNC1(shm_arg);
		goto out;
	}

	FUNC6(pages_list, pages, num_pages,
			      FUNC9(shm));

	msg_arg->cmd = OPTEE_MSG_CMD_REGISTER_SHM;
	msg_arg->params->attr = OPTEE_MSG_ATTR_TYPE_TMEM_OUTPUT |
				OPTEE_MSG_ATTR_NONCONTIG;
	msg_arg->params->u.tmem.shm_ref = (unsigned long)shm;
	msg_arg->params->u.tmem.size = FUNC10(shm);
	/*
	 * In the least bits of msg_arg->params->u.tmem.buf_ptr we
	 * store buffer offset from 4k page, as described in OP-TEE ABI.
	 */
	msg_arg->params->u.tmem.buf_ptr = FUNC11(pages_list) |
	  (FUNC9(shm) & (OPTEE_MSG_NONCONTIG_PAGE_SIZE - 1));

	if (FUNC5(ctx, msg_parg) ||
	    msg_arg->ret != TEEC_SUCCESS)
		rc = -EINVAL;

	FUNC8(shm_arg);
out:
	FUNC7(pages_list, num_pages);
	return rc;
}