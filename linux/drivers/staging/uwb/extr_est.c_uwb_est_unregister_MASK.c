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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct uwb_est_entry {int dummy; } ;
struct uwb_est {int type_event_high; size_t entries; struct uwb_est_entry const* entry; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; } ;
typedef  int /*<<< orphan*/  est_cmp ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct uwb_est*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/ * uwb_est ; 
 int /*<<< orphan*/  uwb_est_lock ; 
 unsigned int uwb_est_used ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(u8 type, u8 event_high, u16 vendor, u16 product,
		       const struct uwb_est_entry *entry, size_t entries)
{
	unsigned long flags;
	unsigned itr;
	struct uwb_est est_cmp = {
		.type_event_high = type << 8 | event_high,
		.vendor = vendor,
		.product = product,
		.entry = entry,
		.entries = entries
	};
	FUNC2(&uwb_est_lock, flags);
	for (itr = 0; itr < uwb_est_used; itr++)
		if (!FUNC0(&uwb_est[itr], &est_cmp, sizeof(est_cmp)))
			goto found;
	FUNC3(&uwb_est_lock, flags);
	return -ENOENT;

found:
	if (itr < uwb_est_used - 1)	/* Not last one? move ones above */
		FUNC1(&uwb_est[itr], &uwb_est[itr+1], uwb_est_used - itr - 1);
	uwb_est_used--;
	FUNC3(&uwb_est_lock, flags);
	return 0;
}