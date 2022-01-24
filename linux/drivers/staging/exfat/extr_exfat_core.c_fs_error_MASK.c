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
struct super_block {int /*<<< orphan*/  s_flags; } ;
struct exfat_mount_options {scalar_t__ errors; } ;
struct TYPE_2__ {struct exfat_mount_options options; } ;

/* Variables and functions */
 scalar_t__ EXFAT_ERRORS_PANIC ; 
 scalar_t__ EXFAT_ERRORS_RO ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  SB_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 

void FUNC4(struct super_block *sb)
{
	struct exfat_mount_options *opts = &FUNC0(sb)->options;

	if (opts->errors == EXFAT_ERRORS_PANIC) {
		FUNC1("[EXFAT] Filesystem panic from previous error\n");
	} else if ((opts->errors == EXFAT_ERRORS_RO) && !FUNC3(sb)) {
		sb->s_flags |= SB_RDONLY;
		FUNC2("[EXFAT] Filesystem has been set read-only\n");
	}
}