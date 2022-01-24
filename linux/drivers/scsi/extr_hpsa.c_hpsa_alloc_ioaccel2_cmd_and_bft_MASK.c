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
typedef  int /*<<< orphan*/  u32 ;
struct io_accel2_cmd {int dummy; } ;
struct ctlr_info {int ioaccel_maxsg; int nr_cmds; int /*<<< orphan*/ * ioaccel2_cmd_pool; int /*<<< orphan*/ * ioaccel2_blockFetchTable; int /*<<< orphan*/  ioaccel2_cmd_pool_dhandle; TYPE_2__* pdev; TYPE_1__* cfgtable; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  io_accel_max_embedded_sg_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IOACCEL2_COMMANDLIST_ALIGNMENT ; 
 int IOACCEL2_MAXSGENTRIES ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ctlr_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ctlr_info*) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ctlr_info *h)
{
	int rc;

	/* Allocate ioaccel2 mode command blocks and block fetch table */

	h->ioaccel_maxsg =
		FUNC6(&(h->cfgtable->io_accel_max_embedded_sg_count));
	if (h->ioaccel_maxsg > IOACCEL2_MAXSGENTRIES)
		h->ioaccel_maxsg = IOACCEL2_MAXSGENTRIES;

	FUNC0(sizeof(struct io_accel2_cmd) %
			IOACCEL2_COMMANDLIST_ALIGNMENT);
	h->ioaccel2_cmd_pool =
		FUNC1(&h->pdev->dev,
			h->nr_cmds * sizeof(*h->ioaccel2_cmd_pool),
			&h->ioaccel2_cmd_pool_dhandle, GFP_KERNEL);

	h->ioaccel2_blockFetchTable =
		FUNC4(((h->ioaccel_maxsg + 1) *
				sizeof(u32)), GFP_KERNEL);

	if ((h->ioaccel2_cmd_pool == NULL) ||
		(h->ioaccel2_blockFetchTable == NULL)) {
		rc = -ENOMEM;
		goto clean_up;
	}

	rc = FUNC2(h);
	if (rc)
		goto clean_up;

	FUNC5(h->ioaccel2_cmd_pool, 0,
		h->nr_cmds * sizeof(*h->ioaccel2_cmd_pool));
	return 0;

clean_up:
	FUNC3(h);
	return rc;
}