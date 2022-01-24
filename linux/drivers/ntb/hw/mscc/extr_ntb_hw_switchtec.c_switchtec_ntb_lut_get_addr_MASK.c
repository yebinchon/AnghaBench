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
struct switchtec_ntb {int* direct_mw_to_bar; TYPE_1__ ntb; } ;
typedef  int resource_size_t ;
typedef  scalar_t__ phys_addr_t ;

/* Variables and functions */
 int LUT_SIZE ; 
 int FUNC0 (struct switchtec_ntb*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct switchtec_ntb *sndev,
				      int idx, phys_addr_t *base,
				      resource_size_t *size)
{
	int bar = sndev->direct_mw_to_bar[0];
	int offset;

	offset = LUT_SIZE * FUNC0(sndev, idx);

	if (base)
		*base = FUNC1(sndev->ntb.pdev, bar) + offset;

	if (size)
		*size = LUT_SIZE;

	return 0;
}