#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlxbf_tmfifo_vring {int index; int /*<<< orphan*/  dma; void* va; int /*<<< orphan*/  align; int /*<<< orphan*/  num; int /*<<< orphan*/  vdev_id; struct mlxbf_tmfifo* fifo; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {struct device dev; TYPE_1__ id; } ;
struct mlxbf_tmfifo_vdev {TYPE_2__ vdev; struct mlxbf_tmfifo_vring* vrings; } ;
struct mlxbf_tmfifo {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int FUNC0 (struct mlxbf_tmfifo_vring*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MLXBF_TMFIFO_VRING_SIZE ; 
 int /*<<< orphan*/  SMP_CACHE_BYTES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxbf_tmfifo*,struct mlxbf_tmfifo_vdev*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mlxbf_tmfifo *fifo,
				     struct mlxbf_tmfifo_vdev *tm_vdev)
{
	struct mlxbf_tmfifo_vring *vring;
	struct device *dev;
	dma_addr_t dma;
	int i, size;
	void *va;

	for (i = 0; i < FUNC0(tm_vdev->vrings); i++) {
		vring = &tm_vdev->vrings[i];
		vring->fifo = fifo;
		vring->num = MLXBF_TMFIFO_VRING_SIZE;
		vring->align = SMP_CACHE_BYTES;
		vring->index = i;
		vring->vdev_id = tm_vdev->vdev.id.device;
		dev = &tm_vdev->vdev.dev;

		size = FUNC4(vring->num, vring->align);
		va = FUNC2(dev->parent, size, &dma, GFP_KERNEL);
		if (!va) {
			FUNC3(fifo, tm_vdev);
			FUNC1(dev->parent, "dma_alloc_coherent failed\n");
			return -ENOMEM;
		}

		vring->va = va;
		vring->dma = dma;
	}

	return 0;
}