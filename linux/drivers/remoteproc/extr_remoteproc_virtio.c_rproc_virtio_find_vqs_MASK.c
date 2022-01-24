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
typedef  int /*<<< orphan*/  vq_callback_t ;
struct virtqueue {int dummy; } ;
struct virtio_device {int dummy; } ;
struct irq_affinity {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct virtqueue*) ; 
 int FUNC1 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC2 (struct virtio_device*) ; 
 struct virtqueue* FUNC3 (struct virtio_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const* const,int const) ; 

__attribute__((used)) static int FUNC4(struct virtio_device *vdev, unsigned int nvqs,
				 struct virtqueue *vqs[],
				 vq_callback_t *callbacks[],
				 const char * const names[],
				 const bool * ctx,
				 struct irq_affinity *desc)
{
	int i, ret, queue_idx = 0;

	for (i = 0; i < nvqs; ++i) {
		if (!names[i]) {
			vqs[i] = NULL;
			continue;
		}

		vqs[i] = FUNC3(vdev, queue_idx++, callbacks[i], names[i],
				    ctx ? ctx[i] : false);
		if (FUNC0(vqs[i])) {
			ret = FUNC1(vqs[i]);
			goto error;
		}
	}

	return 0;

error:
	FUNC2(vdev);
	return ret;
}