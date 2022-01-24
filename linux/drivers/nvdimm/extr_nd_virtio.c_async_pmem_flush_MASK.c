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
struct nd_region {int dummy; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; int /*<<< orphan*/  bi_opf; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  REQ_PREFLUSH ; 
 struct bio* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 scalar_t__ FUNC4 (struct nd_region*) ; 

int FUNC5(struct nd_region *nd_region, struct bio *bio)
{
	/*
	 * Create child bio for asynchronous flush and chain with
	 * parent bio. Otherwise directly call nd_region flush.
	 */
	if (bio && bio->bi_iter.bi_sector != -1) {
		struct bio *child = FUNC0(GFP_ATOMIC, 0);

		if (!child)
			return -ENOMEM;
		FUNC2(child, bio);
		child->bi_opf = REQ_PREFLUSH;
		child->bi_iter.bi_sector = -1;
		FUNC1(child, bio);
		FUNC3(child);
		return 0;
	}
	if (FUNC4(nd_region))
		return -EIO;

	return 0;
}