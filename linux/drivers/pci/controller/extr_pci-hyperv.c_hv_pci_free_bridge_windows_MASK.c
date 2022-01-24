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
struct hv_pcibus_device {TYPE_1__* high_mmio_res; scalar_t__ high_mmio_space; TYPE_1__* low_mmio_res; scalar_t__ low_mmio_space; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_BUSY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hv_pcibus_device *hbus)
{
	/*
	 * Set the resources back to the way they looked when they
	 * were allocated by setting IORESOURCE_BUSY again.
	 */

	if (hbus->low_mmio_space && hbus->low_mmio_res) {
		hbus->low_mmio_res->flags |= IORESOURCE_BUSY;
		FUNC1(hbus->low_mmio_res->start,
				FUNC0(hbus->low_mmio_res));
	}

	if (hbus->high_mmio_space && hbus->high_mmio_res) {
		hbus->high_mmio_res->flags |= IORESOURCE_BUSY;
		FUNC1(hbus->high_mmio_res->start,
				FUNC0(hbus->high_mmio_res));
	}
}