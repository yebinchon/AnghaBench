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
struct btrfs_io_ctl {scalar_t__ cur; scalar_t__ orig; scalar_t__ index; scalar_t__ num_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_io_ctl*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_io_ctl*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_io_ctl*) ; 

__attribute__((used)) static void FUNC3(struct btrfs_io_ctl *io_ctl)
{
	/*
	 * If we're not on the boundary we know we've modified the page and we
	 * need to crc the page.
	 */
	if (io_ctl->cur != io_ctl->orig)
		FUNC1(io_ctl, io_ctl->index - 1);
	else
		FUNC2(io_ctl);

	while (io_ctl->index < io_ctl->num_pages) {
		FUNC0(io_ctl, 1);
		FUNC1(io_ctl, io_ctl->index - 1);
	}
}