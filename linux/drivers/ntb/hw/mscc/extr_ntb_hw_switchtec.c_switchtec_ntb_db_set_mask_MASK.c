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
typedef  int u64 ;
struct switchtec_ntb {int db_valid_mask; int db_mask; int db_shift; int /*<<< orphan*/  db_mask_lock; TYPE_1__* mmio_self_dbmsg; } ;
struct ntb_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  idb_mask; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 struct switchtec_ntb* FUNC1 (struct ntb_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct ntb_dev *ntb, u64 db_bits)
{
	unsigned long irqflags;
	struct switchtec_ntb *sndev = FUNC1(ntb);

	if (db_bits & ~sndev->db_valid_mask)
		return -EINVAL;

	FUNC2(&sndev->db_mask_lock, irqflags);

	sndev->db_mask |= db_bits << sndev->db_shift;
	FUNC0(~sndev->db_mask, &sndev->mmio_self_dbmsg->idb_mask);

	FUNC3(&sndev->db_mask_lock, irqflags);

	return 0;
}