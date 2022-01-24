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
struct tee_shm {int flags; int /*<<< orphan*/  dmabuf; struct tee_context* ctx; } ;
struct tee_device {int /*<<< orphan*/  mutex; int /*<<< orphan*/  idr; } ;
struct tee_context {struct tee_device* teedev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct tee_shm* FUNC0 (int /*<<< orphan*/ ) ; 
 int TEE_SHM_DMA_BUF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct tee_shm* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct tee_shm *FUNC5(struct tee_context *ctx, int id)
{
	struct tee_device *teedev;
	struct tee_shm *shm;

	if (!ctx)
		return FUNC0(-EINVAL);

	teedev = ctx->teedev;
	FUNC3(&teedev->mutex);
	shm = FUNC2(&teedev->idr, id);
	if (!shm || shm->ctx != ctx)
		shm = FUNC0(-EINVAL);
	else if (shm->flags & TEE_SHM_DMA_BUF)
		FUNC1(shm->dmabuf);
	FUNC4(&teedev->mutex);
	return shm;
}