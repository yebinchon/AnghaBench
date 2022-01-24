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
struct extent_buffer {int dummy; } ;

/* Variables and functions */
 int BTRFS_READ_LOCK ; 
 int BTRFS_READ_LOCK_BLOCKING ; 
 int BTRFS_WRITE_LOCK ; 
 int BTRFS_WRITE_LOCK_BLOCKING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*) ; 

__attribute__((used)) static inline void FUNC4(struct extent_buffer *eb, int rw)
{
	if (rw == BTRFS_WRITE_LOCK || rw == BTRFS_WRITE_LOCK_BLOCKING)
		FUNC3(eb);
	else if (rw == BTRFS_READ_LOCK_BLOCKING)
		FUNC2(eb);
	else if (rw == BTRFS_READ_LOCK)
		FUNC1(eb);
	else
		FUNC0();
}