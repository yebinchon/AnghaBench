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
struct tee_shm {int flags; int /*<<< orphan*/  dmabuf; } ;

/* Variables and functions */
 int TEE_SHM_DMA_BUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tee_shm*) ; 

void FUNC2(struct tee_shm *shm)
{
	/*
	 * dma_buf_put() decreases the dmabuf reference counter and will
	 * call tee_shm_release() when the last reference is gone.
	 *
	 * In the case of driver private memory we call tee_shm_release
	 * directly instead as it doesn't have a reference counter.
	 */
	if (shm->flags & TEE_SHM_DMA_BUF)
		FUNC0(shm->dmabuf);
	else
		FUNC1(shm);
}