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
struct TYPE_2__ {int /*<<< orphan*/  pdev; } ;
struct switchtec_ntb {int* direct_mw_to_bar; size_t nr_lut_mw; TYPE_1__ ntb; } ;
typedef  size_t resource_size_t ;
typedef  scalar_t__ phys_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 size_t LUT_SIZE ; 
 size_t max_mw_size ; 
 size_t FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct switchtec_ntb *sndev,
					 int idx, phys_addr_t *base,
					 resource_size_t *size)
{
	int bar = sndev->direct_mw_to_bar[idx];
	size_t offset = 0;

	if (bar < 0)
		return -EINVAL;

	if (idx == 0) {
		/*
		 * This is the direct BAR shared with the LUTs
		 * which means the actual window will be offset
		 * by the size of all the LUT entries.
		 */

		offset = LUT_SIZE * sndev->nr_lut_mw;
	}

	if (base)
		*base = FUNC1(sndev->ntb.pdev, bar) + offset;

	if (size) {
		*size = FUNC0(sndev->ntb.pdev, bar) - offset;
		if (offset && *size > offset)
			*size = offset;

		if (*size > max_mw_size)
			*size = max_mw_size;
	}

	return 0;
}