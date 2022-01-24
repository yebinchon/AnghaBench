#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct se_cmd {int dummy; } ;
struct bio {scalar_t__ bi_status; struct se_cmd* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAM_STAT_CHECK_CONDITION ; 
 int /*<<< orphan*/  SAM_STAT_GOOD ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct se_cmd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct bio *bio)
{
	struct se_cmd *cmd = bio->bi_private;

	if (bio->bi_status)
		FUNC1("IBLOCK: cache flush failed: %d\n", bio->bi_status);

	if (cmd) {
		if (bio->bi_status)
			FUNC2(cmd, SAM_STAT_CHECK_CONDITION);
		else
			FUNC2(cmd, SAM_STAT_GOOD);
	}

	FUNC0(bio);
}