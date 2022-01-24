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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct btrfs_io_ctl {int num_pages; int size; int /*<<< orphan*/ * cur; scalar_t__ check_crcs; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_io_ctl*,int) ; 

__attribute__((used)) static void FUNC2(struct btrfs_io_ctl *io_ctl, u64 generation)
{
	__le64 *val;

	FUNC1(io_ctl, 1);

	/*
	 * Skip the csum areas.  If we don't check crcs then we just have a
	 * 64bit chunk at the front of the first page.
	 */
	if (io_ctl->check_crcs) {
		io_ctl->cur += (sizeof(u32) * io_ctl->num_pages);
		io_ctl->size -= sizeof(u64) + (sizeof(u32) * io_ctl->num_pages);
	} else {
		io_ctl->cur += sizeof(u64);
		io_ctl->size -= sizeof(u64) * 2;
	}

	val = io_ctl->cur;
	*val = FUNC0(generation);
	io_ctl->cur += sizeof(u64);
}