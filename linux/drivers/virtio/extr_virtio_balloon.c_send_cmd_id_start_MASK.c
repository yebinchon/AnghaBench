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
struct virtio_balloon {int /*<<< orphan*/  cmd_id_active; int /*<<< orphan*/  vdev; struct virtqueue* free_page_vq; } ;
struct scatterlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct virtio_balloon*) ; 
 int FUNC3 (struct virtqueue*,struct scatterlist*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct virtqueue*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct virtqueue*) ; 

__attribute__((used)) static int FUNC6(struct virtio_balloon *vb)
{
	struct scatterlist sg;
	struct virtqueue *vq = vb->free_page_vq;
	int err, unused;

	/* Detach all the used buffers from the vq */
	while (FUNC4(vq, &unused))
		;

	vb->cmd_id_active = FUNC1(vb->vdev,
					FUNC2(vb));
	FUNC0(&sg, &vb->cmd_id_active, sizeof(vb->cmd_id_active));
	err = FUNC3(vq, &sg, 1, &vb->cmd_id_active, GFP_KERNEL);
	if (!err)
		FUNC5(vq);
	return err;
}