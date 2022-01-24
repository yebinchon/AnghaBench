#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int /*<<< orphan*/ * s_fs_info; } ;
struct TYPE_3__ {int /*<<< orphan*/ * iocharset; } ;
struct TYPE_4__ {int /*<<< orphan*/  nls; TYPE_1__ mount_opts; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct super_block *sb)
{
	FUNC1(FUNC0(sb)->mount_opts.iocharset);
	FUNC0(sb)->mount_opts.iocharset = NULL;
	FUNC2(FUNC0(sb)->nls);
	FUNC1(sb->s_fs_info);
	sb->s_fs_info = NULL;
}