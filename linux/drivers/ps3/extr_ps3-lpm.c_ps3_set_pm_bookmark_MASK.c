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
typedef  int u64 ;

/* Variables and functions */
 int PS3_PM_BOOKMARK_TAG_KERNEL ; 
 int PS3_PM_BOOKMARK_TAG_MASK_LO ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(u64 tag, u64 incident, u64 th_id)
{
	u64 bookmark;

	bookmark = (FUNC0() & 0x00000000FFFFFFFFULL) |
		PS3_PM_BOOKMARK_TAG_KERNEL;
	bookmark = ((tag << 56) & PS3_PM_BOOKMARK_TAG_MASK_LO) |
		(incident << 48) | (th_id << 32) | bookmark;
	FUNC1(bookmark);
}