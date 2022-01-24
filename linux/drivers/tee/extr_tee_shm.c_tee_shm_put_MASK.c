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

void FUNC1(struct tee_shm *shm)
{
	if (shm->flags & TEE_SHM_DMA_BUF)
		FUNC0(shm->dmabuf);
}