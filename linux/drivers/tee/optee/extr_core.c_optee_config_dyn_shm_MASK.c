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
struct tee_shm_pool_mgr {int dummy; } ;
typedef  void tee_shm_pool ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 void* FUNC1 () ; 
 void* FUNC2 (struct tee_shm_pool_mgr*,struct tee_shm_pool_mgr*) ; 
 int /*<<< orphan*/  FUNC3 (struct tee_shm_pool_mgr*) ; 

__attribute__((used)) static struct tee_shm_pool *FUNC4(void)
{
	struct tee_shm_pool_mgr *priv_mgr;
	struct tee_shm_pool_mgr *dmabuf_mgr;
	void *rc;

	rc = FUNC1();
	if (FUNC0(rc))
		return rc;
	priv_mgr = rc;

	rc = FUNC1();
	if (FUNC0(rc)) {
		FUNC3(priv_mgr);
		return rc;
	}
	dmabuf_mgr = rc;

	rc = FUNC2(priv_mgr, dmabuf_mgr);
	if (FUNC0(rc)) {
		FUNC3(priv_mgr);
		FUNC3(dmabuf_mgr);
	}

	return rc;
}