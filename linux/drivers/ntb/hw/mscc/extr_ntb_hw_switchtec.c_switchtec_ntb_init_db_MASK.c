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
struct switchtec_ntb {int db_mask; int db_shift; int db_peer_shift; int db_valid_mask; scalar_t__ self_partition; scalar_t__ peer_partition; TYPE_2__* stdev; TYPE_1__* mmio_peer_dbmsg; TYPE_1__* mmio_self_dbmsg; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  odb_mask; int /*<<< orphan*/  idb_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct switchtec_ntb *sndev)
{
	sndev->db_mask = 0x0FFFFFFFFFFFFFFFULL;

	if (sndev->mmio_peer_dbmsg != sndev->mmio_self_dbmsg) {
		sndev->db_shift = 0;
		sndev->db_peer_shift = 0;
		sndev->db_valid_mask = sndev->db_mask;
	} else if (sndev->self_partition < sndev->peer_partition) {
		sndev->db_shift = 0;
		sndev->db_peer_shift = 32;
		sndev->db_valid_mask = 0x0FFFFFFF;
	} else {
		sndev->db_shift = 32;
		sndev->db_peer_shift = 0;
		sndev->db_valid_mask = 0x0FFFFFFF;
	}

	FUNC1(~sndev->db_mask, &sndev->mmio_self_dbmsg->idb_mask);
	FUNC1(sndev->db_valid_mask << sndev->db_peer_shift,
		  &sndev->mmio_peer_dbmsg->odb_mask);

	FUNC0(&sndev->stdev->dev, "dbs: shift %d/%d, mask %016llx\n",
		sndev->db_shift, sndev->db_peer_shift, sndev->db_valid_mask);
}