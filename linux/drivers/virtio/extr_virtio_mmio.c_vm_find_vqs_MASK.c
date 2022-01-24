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
struct virtio_mmio_device {int /*<<< orphan*/  pdev; } ;
struct virtio_device {int /*<<< orphan*/  dev; } ;
struct irq_affinity {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (struct virtqueue*) ; 
 int FUNC1 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct virtio_mmio_device*) ; 
 struct virtio_mmio_device* FUNC6 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct virtio_device*) ; 
 int /*<<< orphan*/  vm_interrupt ; 
 struct virtqueue* FUNC8 (struct virtio_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const* const,int const) ; 

__attribute__((used)) static int FUNC9(struct virtio_device *vdev, unsigned nvqs,
		       struct virtqueue *vqs[],
		       vq_callback_t *callbacks[],
		       const char * const names[],
		       const bool *ctx,
		       struct irq_affinity *desc)
{
	struct virtio_mmio_device *vm_dev = FUNC6(vdev);
	int irq = FUNC4(vm_dev->pdev, 0);
	int i, err, queue_idx = 0;

	if (irq < 0) {
		FUNC2(&vdev->dev, "Cannot get IRQ resource\n");
		return irq;
	}

	err = FUNC5(irq, vm_interrupt, IRQF_SHARED,
			FUNC3(&vdev->dev), vm_dev);
	if (err)
		return err;

	for (i = 0; i < nvqs; ++i) {
		if (!names[i]) {
			vqs[i] = NULL;
			continue;
		}

		vqs[i] = FUNC8(vdev, queue_idx++, callbacks[i], names[i],
				     ctx ? ctx[i] : false);
		if (FUNC0(vqs[i])) {
			FUNC7(vdev);
			return FUNC1(vqs[i]);
		}
	}

	return 0;
}