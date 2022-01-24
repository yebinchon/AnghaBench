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
struct xenfb_info {int y1; int y2; int x1; int x2; int /*<<< orphan*/  dirty_lock; int /*<<< orphan*/  update_wanted; } ;

/* Variables and functions */
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct xenfb_info*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xenfb_info*) ; 
 scalar_t__ FUNC4 (struct xenfb_info*) ; 

__attribute__((used)) static void FUNC5(struct xenfb_info *info,
			  int x1, int y1, int w, int h)
{
	unsigned long flags;
	int x2 = x1 + w - 1;
	int y2 = y1 + h - 1;

	FUNC3(info);

	if (!info->update_wanted)
		return;

	FUNC0(&info->dirty_lock, flags);

	/* Combine with dirty rectangle: */
	if (info->y1 < y1)
		y1 = info->y1;
	if (info->y2 > y2)
		y2 = info->y2;
	if (info->x1 < x1)
		x1 = info->x1;
	if (info->x2 > x2)
		x2 = info->x2;

	if (FUNC4(info)) {
		/* Can't send right now, stash it in the dirty rectangle */
		info->x1 = x1;
		info->x2 = x2;
		info->y1 = y1;
		info->y2 = y2;
		FUNC1(&info->dirty_lock, flags);
		return;
	}

	/* Clear dirty rectangle: */
	info->x1 = info->y1 = INT_MAX;
	info->x2 = info->y2 = 0;

	FUNC1(&info->dirty_lock, flags);

	if (x1 <= x2 && y1 <= y2)
		FUNC2(info, x1, y1, x2 - x1 + 1, y2 - y1 + 1);
}