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
struct tee_shm_pool_mgr {int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct tee_shm_pool_mgr* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct tee_shm_pool_mgr* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pool_ops ; 

struct tee_shm_pool_mgr *FUNC2(void)
{
	struct tee_shm_pool_mgr *mgr = FUNC1(sizeof(*mgr), GFP_KERNEL);

	if (!mgr)
		return FUNC0(-ENOMEM);

	mgr->ops = &pool_ops;

	return mgr;
}