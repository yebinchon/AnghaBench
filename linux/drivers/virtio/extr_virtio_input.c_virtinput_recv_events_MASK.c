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
struct virtio_input_event {int /*<<< orphan*/  value; int /*<<< orphan*/  code; int /*<<< orphan*/  type; } ;
struct virtio_input {int /*<<< orphan*/  lock; int /*<<< orphan*/  idev; int /*<<< orphan*/  evt; scalar_t__ ready; } ;
struct TYPE_2__ {struct virtio_input* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct virtio_input*,struct virtio_input_event*) ; 
 struct virtio_input_event* FUNC6 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct virtqueue*) ; 

__attribute__((used)) static void FUNC8(struct virtqueue *vq)
{
	struct virtio_input *vi = vq->vdev->priv;
	struct virtio_input_event *event;
	unsigned long flags;
	unsigned int len;

	FUNC3(&vi->lock, flags);
	if (vi->ready) {
		while ((event = FUNC6(vi->evt, &len)) != NULL) {
			FUNC4(&vi->lock, flags);
			FUNC0(vi->idev,
				    FUNC1(event->type),
				    FUNC1(event->code),
				    FUNC2(event->value));
			FUNC3(&vi->lock, flags);
			FUNC5(vi, event);
		}
		FUNC7(vq);
	}
	FUNC4(&vi->lock, flags);
}