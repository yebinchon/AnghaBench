#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct smcd_event {int dummy; } ;
struct ism_dev {int ieq_idx; int /*<<< orphan*/  smcd; TYPE_2__* ieq; } ;
struct TYPE_3__ {int /*<<< orphan*/  idx; } ;
struct TYPE_4__ {struct smcd_event* entry; TYPE_1__ header; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct smcd_event*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct smcd_event*,int) ; 
 int /*<<< orphan*/  ism_debug_info ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct smcd_event*) ; 

__attribute__((used)) static void FUNC4(struct ism_dev *ism)
{
	struct smcd_event *entry;

	while ((ism->ieq_idx + 1) != FUNC1(ism->ieq->header.idx)) {
		if (++(ism->ieq_idx) == FUNC0(ism->ieq->entry))
			ism->ieq_idx = 0;

		entry = &ism->ieq->entry[ism->ieq_idx];
		FUNC2(ism_debug_info, 2, entry, sizeof(*entry));
		FUNC3(ism->smcd, entry);
	}
}