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
struct sddr09_card_info {int /*<<< orphan*/  pba_to_lba; int /*<<< orphan*/  lba_to_pba; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(void *extra) {
	struct sddr09_card_info *info = (struct sddr09_card_info *)extra;

	if (!info)
		return;

	FUNC0(info->lba_to_pba);
	FUNC0(info->pba_to_lba);
}