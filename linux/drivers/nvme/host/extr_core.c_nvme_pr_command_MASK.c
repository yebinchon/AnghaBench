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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct nvme_ns_head {int dummy; } ;
struct nvme_ns {int /*<<< orphan*/  queue; TYPE_1__* head; } ;
struct TYPE_4__ {void* cdw10; void* nsid; int /*<<< orphan*/  opcode; } ;
struct nvme_command {TYPE_2__ common; } ;
struct block_device {int /*<<< orphan*/  bd_disk; } ;
typedef  int /*<<< orphan*/  c ;
struct TYPE_3__ {int /*<<< orphan*/  ns_id; } ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_command*,int /*<<< orphan*/ ,int) ; 
 struct nvme_ns* FUNC2 (int /*<<< orphan*/ ,struct nvme_ns_head**,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_ns_head*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct nvme_command*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct block_device *bdev, u32 cdw10,
				u64 key, u64 sa_key, u8 op)
{
	struct nvme_ns_head *head = NULL;
	struct nvme_ns *ns;
	struct nvme_command c;
	int srcu_idx, ret;
	u8 data[16] = { 0, };

	ns = FUNC2(bdev->bd_disk, &head, &srcu_idx);
	if (FUNC6(!ns))
		return -EWOULDBLOCK;

	FUNC5(key, &data[0]);
	FUNC5(sa_key, &data[8]);

	FUNC1(&c, 0, sizeof(c));
	c.common.opcode = op;
	c.common.nsid = FUNC0(ns->head->ns_id);
	c.common.cdw10 = FUNC0(cdw10);

	ret = FUNC4(ns->queue, &c, data, 16);
	FUNC3(head, srcu_idx);
	return ret;
}