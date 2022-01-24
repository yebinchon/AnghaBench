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
struct mlxbf_tmfifo_vring {int /*<<< orphan*/ * vq; int /*<<< orphan*/ * va; int /*<<< orphan*/  dma; int /*<<< orphan*/  align; int /*<<< orphan*/  num; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct mlxbf_tmfifo_vdev {TYPE_2__ vdev; struct mlxbf_tmfifo_vring* vrings; } ;
struct mlxbf_tmfifo {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mlxbf_tmfifo_vring*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mlxbf_tmfifo *fifo,
				     struct mlxbf_tmfifo_vdev *tm_vdev)
{
	struct mlxbf_tmfifo_vring *vring;
	int i, size;

	for (i = 0; i < FUNC0(tm_vdev->vrings); i++) {
		vring = &tm_vdev->vrings[i];
		if (vring->va) {
			size = FUNC3(vring->num, vring->align);
			FUNC1(tm_vdev->vdev.dev.parent, size,
					  vring->va, vring->dma);
			vring->va = NULL;
			if (vring->vq) {
				FUNC2(vring->vq);
				vring->vq = NULL;
			}
		}
	}
}