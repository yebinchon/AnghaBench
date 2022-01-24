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
typedef  int u32 ;
struct switchtec_dev {int pff_csr_count; int* link_event_count; int /*<<< orphan*/  link_event_work; int /*<<< orphan*/  dev; TYPE_1__* mmio_pff_csr; } ;
struct TYPE_2__ {int /*<<< orphan*/  link_state_hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct switchtec_dev *stdev)
{
	int idx;
	u32 reg;
	int count;
	int occurred = 0;

	for (idx = 0; idx < stdev->pff_csr_count; idx++) {
		reg = FUNC1(&stdev->mmio_pff_csr[idx].link_state_hdr);
		FUNC0(&stdev->dev, "link_state: %d->%08x\n", idx, reg);
		count = (reg >> 5) & 0xFF;

		if (count != stdev->link_event_count[idx]) {
			occurred = 1;
			stdev->link_event_count[idx] = count;
		}
	}

	if (occurred)
		FUNC2(&stdev->link_event_work);
}