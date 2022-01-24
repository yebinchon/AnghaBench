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
struct TYPE_2__ {int nents; int /*<<< orphan*/  sgl; } ;
struct scsi_data_buffer {int /*<<< orphan*/  length; TYPE_1__ table; } ;
struct request {int /*<<< orphan*/  q; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_OK ; 
 int /*<<< orphan*/  BLK_STS_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SCSI_INLINE_SG_CNT ; 
 int FUNC1 (int /*<<< orphan*/ ,struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static blk_status_t FUNC6(struct request *req,
		struct scsi_data_buffer *sdb)
{
	int count;

	/*
	 * If sg table allocation fails, requeue request later.
	 */
	if (FUNC5(FUNC4(&sdb->table,
			FUNC2(req), sdb->table.sgl,
			SCSI_INLINE_SG_CNT)))
		return BLK_STS_RESOURCE;

	/* 
	 * Next, walk the list, and fill in the addresses and sizes of
	 * each segment.
	 */
	count = FUNC1(req->q, req, sdb->table.sgl);
	FUNC0(count > sdb->table.nents);
	sdb->table.nents = count;
	sdb->length = FUNC3(req);
	return BLK_STS_OK;
}