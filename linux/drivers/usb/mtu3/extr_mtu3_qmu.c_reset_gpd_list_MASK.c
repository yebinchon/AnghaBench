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
struct qmu_gpd {int /*<<< orphan*/  dw0_info; } ;
struct mtu3_gpd_ring {struct qmu_gpd* start; } ;
struct mtu3_ep {struct mtu3_gpd_ring gpd_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPD_FLAGS_HWO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtu3_gpd_ring*,struct qmu_gpd*) ; 

__attribute__((used)) static void FUNC2(struct mtu3_ep *mep)
{
	struct mtu3_gpd_ring *ring = &mep->gpd_ring;
	struct qmu_gpd *gpd = ring->start;

	if (gpd) {
		gpd->dw0_info &= FUNC0(~GPD_FLAGS_HWO);
		FUNC1(ring, gpd);
	}
}