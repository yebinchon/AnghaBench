#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct virtqueue {TYPE_1__* vdev; } ;
struct virtio_input_event {int dummy; } ;
struct virtio_input {int /*<<< orphan*/  lock; int /*<<< orphan*/  sts; } ;
struct TYPE_2__ {struct virtio_input* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct virtio_input_event*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct virtio_input_event* FUNC3 (int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static void FUNC4(struct virtqueue *vq)
{
	struct virtio_input *vi = vq->vdev->priv;
	struct virtio_input_event *stsbuf;
	unsigned long flags;
	unsigned int len;

	FUNC1(&vi->lock, flags);
	while ((stsbuf = FUNC3(vi->sts, &len)) != NULL)
		FUNC0(stsbuf);
	FUNC2(&vi->lock, flags);
}