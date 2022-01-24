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
struct tee_shm {size_t num_params; } ;
struct tee_context {int dummy; } ;
struct optee_msg_arg {size_t num_params; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 struct tee_shm* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct tee_shm*) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int FUNC3 (struct tee_shm*) ; 
 int /*<<< orphan*/  TEE_SHM_MAPPED ; 
 int /*<<< orphan*/  FUNC4 (struct tee_shm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tee_shm* FUNC5 (struct tee_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tee_shm*) ; 
 int FUNC7 (struct tee_shm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct tee_shm* FUNC8 (struct tee_shm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct tee_shm *FUNC9(struct tee_context *ctx, size_t num_params,
				   struct optee_msg_arg **msg_arg,
				   phys_addr_t *msg_parg)
{
	int rc;
	struct tee_shm *shm;
	struct optee_msg_arg *ma;

	shm = FUNC5(ctx, FUNC2(num_params),
			    TEE_SHM_MAPPED);
	if (FUNC1(shm))
		return shm;

	ma = FUNC8(shm, 0);
	if (FUNC1(ma)) {
		rc = FUNC3(ma);
		goto out;
	}

	rc = FUNC7(shm, 0, msg_parg);
	if (rc)
		goto out;

	FUNC4(ma, 0, FUNC2(num_params));
	ma->num_params = num_params;
	*msg_arg = ma;
out:
	if (rc) {
		FUNC6(shm);
		return FUNC0(rc);
	}

	return shm;
}