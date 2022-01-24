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
struct virtqueue {int dummy; } ;
struct virtio_device {int dummy; } ;
struct mlxbf_tmfifo_vring {struct virtqueue* vq; scalar_t__ desc; } ;
struct mlxbf_tmfifo_vdev {struct mlxbf_tmfifo_vring* vrings; } ;

/* Variables and functions */
 int FUNC0 (struct mlxbf_tmfifo_vring*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxbf_tmfifo_vring*) ; 
 struct mlxbf_tmfifo_vdev* FUNC2 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct virtqueue*) ; 

__attribute__((used)) static void FUNC4(struct virtio_device *vdev)
{
	struct mlxbf_tmfifo_vdev *tm_vdev = FUNC2(vdev);
	struct mlxbf_tmfifo_vring *vring;
	struct virtqueue *vq;
	int i;

	for (i = 0; i < FUNC0(tm_vdev->vrings); i++) {
		vring = &tm_vdev->vrings[i];

		/* Release the pending packet. */
		if (vring->desc)
			FUNC1(vring);
		vq = vring->vq;
		if (vq) {
			vring->vq = NULL;
			FUNC3(vq);
		}
	}
}