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
struct arxescsi_info {int /*<<< orphan*/  info; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct seq_file *m, struct Scsi_Host *host)
{
	struct arxescsi_info *info;
	info = (struct arxescsi_info *)host->hostdata;

	FUNC3(m, "ARXE 16-bit SCSI driver v%s\n", VERSION);
	FUNC1(&info->info, m);
	FUNC2(&info->info, m);
	FUNC0(&info->info, m);
	return 0;
}