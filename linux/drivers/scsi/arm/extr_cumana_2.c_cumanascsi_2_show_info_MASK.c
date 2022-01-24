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
struct seq_file {int dummy; } ;
struct cumanascsi2_info {int /*<<< orphan*/  info; scalar_t__ terms; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;

/* Variables and functions */
 char* VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,char*) ; 

__attribute__((used)) static int FUNC4(struct seq_file *m, struct Scsi_Host *host)
{
	struct cumanascsi2_info *info;
	info = (struct cumanascsi2_info *)host->hostdata;

	FUNC3(m, "Cumana SCSI II driver v%s\n", VERSION);
	FUNC1(&info->info, m);
	FUNC3(m, "Term    : o%s\n",
			info->terms ? "n" : "ff");

	FUNC2(&info->info, m);
	FUNC0(&info->info, m);
	return 0;
}