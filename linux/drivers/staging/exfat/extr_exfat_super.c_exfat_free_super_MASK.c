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
struct TYPE_2__ {scalar_t__ iocharset; } ;
struct exfat_sb_info {int /*<<< orphan*/  s_lock; TYPE_1__ options; scalar_t__ nls_io; scalar_t__ nls_disk; } ;

/* Variables and functions */
 scalar_t__ exfat_default_iocharset ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct exfat_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct exfat_sb_info *sbi)
{
	if (sbi->nls_disk)
		FUNC3(sbi->nls_disk);
	if (sbi->nls_io)
		FUNC3(sbi->nls_io);
	if (sbi->options.iocharset != exfat_default_iocharset)
		FUNC0(sbi->options.iocharset);
	/* mutex_init is in exfat_fill_super function. only for 3.7+ */
	FUNC2(&sbi->s_lock);
	FUNC1(sbi);
}