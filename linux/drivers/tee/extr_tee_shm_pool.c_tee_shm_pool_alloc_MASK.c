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
struct tee_shm_pool {struct tee_shm_pool_mgr* dma_buf_mgr; struct tee_shm_pool_mgr* private_mgr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct tee_shm_pool* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct tee_shm_pool_mgr*) ; 
 struct tee_shm_pool* FUNC2 (int,int /*<<< orphan*/ ) ; 

struct tee_shm_pool *FUNC3(struct tee_shm_pool_mgr *priv_mgr,
					struct tee_shm_pool_mgr *dmabuf_mgr)
{
	struct tee_shm_pool *pool;

	if (!FUNC1(priv_mgr) || !FUNC1(dmabuf_mgr))
		return FUNC0(-EINVAL);

	pool = FUNC2(sizeof(*pool), GFP_KERNEL);
	if (!pool)
		return FUNC0(-ENOMEM);

	pool->private_mgr = priv_mgr;
	pool->dma_buf_mgr = dmabuf_mgr;

	return pool;
}