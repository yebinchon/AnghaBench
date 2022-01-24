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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct virtio_device {TYPE_1__ dev; } ;
typedef  scalar_t__ phys_addr_t ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,size_t,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (void*) ; 
 scalar_t__ FUNC6 (struct virtio_device*) ; 

__attribute__((used)) static void *FUNC7(struct virtio_device *vdev, size_t size,
			      dma_addr_t *dma_handle, gfp_t flag)
{
	if (FUNC6(vdev)) {
		return FUNC3(vdev->dev.parent, size,
					  dma_handle, flag);
	} else {
		void *queue = FUNC2(FUNC0(size), flag);

		if (queue) {
			phys_addr_t phys_addr = FUNC5(queue);
			*dma_handle = (dma_addr_t)phys_addr;

			/*
			 * Sanity check: make sure we dind't truncate
			 * the address.  The only arches I can find that
			 * have 64-bit phys_addr_t but 32-bit dma_addr_t
			 * are certain non-highmem MIPS and x86
			 * configurations, but these configurations
			 * should never allocate physical pages above 32
			 * bits, so this is fine.  Just in case, throw a
			 * warning and abort if we end up with an
			 * unrepresentable address.
			 */
			if (FUNC1(*dma_handle != phys_addr)) {
				FUNC4(queue, FUNC0(size));
				return NULL;
			}
		}
		return queue;
	}
}