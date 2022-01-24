#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tee_shm_pool_mgr {TYPE_2__* ops; } ;
struct tee_shm {int flags; size_t num_pages; scalar_t__ ctx; struct tee_shm* pages; int /*<<< orphan*/  link; int /*<<< orphan*/  id; struct tee_device* teedev; } ;
struct TYPE_10__ {int /*<<< orphan*/  parent; } ;
struct tee_device {TYPE_5__ dev; TYPE_4__* desc; TYPE_1__* pool; int /*<<< orphan*/  mutex; int /*<<< orphan*/  idr; } ;
struct TYPE_9__ {TYPE_3__* ops; } ;
struct TYPE_8__ {int (* shm_unregister ) (scalar_t__,struct tee_shm*) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  (* free ) (struct tee_shm_pool_mgr*,struct tee_shm*) ;} ;
struct TYPE_6__ {struct tee_shm_pool_mgr* private_mgr; struct tee_shm_pool_mgr* dma_buf_mgr; } ;

/* Variables and functions */
 int TEE_SHM_DMA_BUF ; 
 int TEE_SHM_POOL ; 
 int TEE_SHM_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct tee_shm*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tee_shm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tee_shm) ; 
 int /*<<< orphan*/  FUNC7 (struct tee_shm_pool_mgr*,struct tee_shm*) ; 
 int FUNC8 (scalar_t__,struct tee_shm*) ; 
 int /*<<< orphan*/  FUNC9 (struct tee_device*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct tee_shm *shm)
{
	struct tee_device *teedev = shm->teedev;

	FUNC4(&teedev->mutex);
	FUNC1(&teedev->idr, shm->id);
	if (shm->ctx)
		FUNC3(&shm->link);
	FUNC5(&teedev->mutex);

	if (shm->flags & TEE_SHM_POOL) {
		struct tee_shm_pool_mgr *poolm;

		if (shm->flags & TEE_SHM_DMA_BUF)
			poolm = teedev->pool->dma_buf_mgr;
		else
			poolm = teedev->pool->private_mgr;

		poolm->ops->free(poolm, shm);
	} else if (shm->flags & TEE_SHM_REGISTER) {
		size_t n;
		int rc = teedev->desc->ops->shm_unregister(shm->ctx, shm);

		if (rc)
			FUNC0(teedev->dev.parent,
				"unregister shm %p failed: %d", shm, rc);

		for (n = 0; n < shm->num_pages; n++)
			FUNC6(shm->pages[n]);

		FUNC2(shm->pages);
	}

	if (shm->ctx)
		FUNC10(shm->ctx);

	FUNC2(shm);

	FUNC9(teedev);
}