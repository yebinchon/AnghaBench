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
struct seq_file {int dummy; } ;
struct exfat_mount_options {scalar_t__ errors; scalar_t__ discard; scalar_t__ casesensitive; scalar_t__ allow_utime; scalar_t__ fs_dmask; scalar_t__ fs_fmask; int /*<<< orphan*/  fs_gid; int /*<<< orphan*/  fs_uid; } ;
struct exfat_sb_info {TYPE_2__* nls_io; TYPE_1__* nls_disk; struct exfat_mount_options options; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct TYPE_4__ {scalar_t__ charset; } ;
struct TYPE_3__ {scalar_t__ charset; } ;

/* Variables and functions */
 scalar_t__ EXFAT_ERRORS_CONT ; 
 scalar_t__ EXFAT_ERRORS_PANIC ; 
 struct exfat_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC5(struct seq_file *m, struct dentry *root)
{
	struct exfat_sb_info *sbi = FUNC0(root->d_sb);
	struct exfat_mount_options *opts = &sbi->options;

	if (FUNC2(opts->fs_uid))
		FUNC3(m, ",uid=%u", FUNC2(opts->fs_uid));
	if (FUNC1(opts->fs_gid))
		FUNC3(m, ",gid=%u", FUNC1(opts->fs_gid));
	FUNC3(m, ",fmask=%04o", opts->fs_fmask);
	FUNC3(m, ",dmask=%04o", opts->fs_dmask);
	if (opts->allow_utime)
		FUNC3(m, ",allow_utime=%04o", opts->allow_utime);
	if (sbi->nls_disk)
		FUNC3(m, ",codepage=%s", sbi->nls_disk->charset);
	if (sbi->nls_io)
		FUNC3(m, ",iocharset=%s", sbi->nls_io->charset);
	FUNC3(m, ",namecase=%u", opts->casesensitive);
	if (opts->errors == EXFAT_ERRORS_CONT)
		FUNC4(m, ",errors=continue");
	else if (opts->errors == EXFAT_ERRORS_PANIC)
		FUNC4(m, ",errors=panic");
	else
		FUNC4(m, ",errors=remount-ro");
#ifdef CONFIG_EXFAT_DISCARD
	if (opts->discard)
		seq_puts(m, ",discard");
#endif
	return 0;
}