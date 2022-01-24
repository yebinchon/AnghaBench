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
struct virtio_balloon {int /*<<< orphan*/  cmd_id_stop; struct virtqueue* free_page_vq; } ;
struct scatterlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct virtqueue*,struct scatterlist*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct virtqueue*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct virtqueue*) ; 

__attribute__((used)) static int FUNC4(struct virtio_balloon *vb)
{
	struct scatterlist sg;
	struct virtqueue *vq = vb->free_page_vq;
	int err, unused;

	/* Detach all the used buffers from the vq */
	while (FUNC2(vq, &unused))
		;

	FUNC0(&sg, &vb->cmd_id_stop, sizeof(vb->cmd_id_stop));
	err = FUNC1(vq, &sg, 1, &vb->cmd_id_stop, GFP_KERNEL);
	if (!err)
		FUNC3(vq);
	return err;
}