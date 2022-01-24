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
struct mlxbf_tmfifo_vdev {int /*<<< orphan*/  vdev; } ;
struct mlxbf_tmfifo {int /*<<< orphan*/  lock; struct mlxbf_tmfifo_vdev** vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxbf_tmfifo*,struct mlxbf_tmfifo_vdev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mlxbf_tmfifo *fifo, int vdev_id)
{
	struct mlxbf_tmfifo_vdev *tm_vdev;

	FUNC1(&fifo->lock);

	/* Unregister vdev. */
	tm_vdev = fifo->vdev[vdev_id];
	if (tm_vdev) {
		FUNC3(&tm_vdev->vdev);
		FUNC0(fifo, tm_vdev);
		fifo->vdev[vdev_id] = NULL;
	}

	FUNC2(&fifo->lock);

	return 0;
}