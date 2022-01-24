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
struct mite_ring {scalar_t__ dma_addr; int /*<<< orphan*/ * descs; scalar_t__ n_links; int /*<<< orphan*/  hw_dev; } ;
struct mite {TYPE_1__* pcidev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mite_ring*) ; 
 struct mite_ring* FUNC2 (int,int /*<<< orphan*/ ) ; 

struct mite_ring *FUNC3(struct mite *mite)
{
	struct mite_ring *ring;

	ring = FUNC2(sizeof(*ring), GFP_KERNEL);
	if (!ring)
		return NULL;
	ring->hw_dev = FUNC0(&mite->pcidev->dev);
	if (!ring->hw_dev) {
		FUNC1(ring);
		return NULL;
	}
	ring->n_links = 0;
	ring->descs = NULL;
	ring->dma_addr = 0;
	return ring;
}