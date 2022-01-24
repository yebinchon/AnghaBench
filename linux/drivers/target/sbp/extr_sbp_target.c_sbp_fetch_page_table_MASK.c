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
struct TYPE_2__ {int /*<<< orphan*/  data_descriptor; int /*<<< orphan*/  misc; } ;
struct sbp_target_request {struct sbp_page_table_entry* pg_tbl; TYPE_1__ orb; } ;
struct sbp_page_table_entry {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RCODE_COMPLETE ; 
 int /*<<< orphan*/  TCODE_READ_BLOCK_REQUEST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sbp_page_table_entry*) ; 
 struct sbp_page_table_entry* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct sbp_target_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sbp_page_table_entry*,int) ; 

__attribute__((used)) static int FUNC7(struct sbp_target_request *req)
{
	int pg_tbl_sz, ret;
	struct sbp_page_table_entry *pg_tbl;

	if (!FUNC1(FUNC2(req->orb.misc)))
		return 0;

	pg_tbl_sz = FUNC0(FUNC2(req->orb.misc)) *
		sizeof(struct sbp_page_table_entry);

	pg_tbl = FUNC4(pg_tbl_sz, GFP_KERNEL);
	if (!pg_tbl)
		return -ENOMEM;

	ret = FUNC6(req, TCODE_READ_BLOCK_REQUEST,
			FUNC5(&req->orb.data_descriptor),
			pg_tbl, pg_tbl_sz);
	if (ret != RCODE_COMPLETE) {
		FUNC3(pg_tbl);
		return -EIO;
	}

	req->pg_tbl = pg_tbl;
	return 0;
}