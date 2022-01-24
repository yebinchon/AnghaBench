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
struct fnic {int /*<<< orphan*/  fnic_stats_debugfs_host; void* fnic_reset_debugfs_file; void* fnic_stats_debugfs_file; TYPE_2__* lport; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int host_no; } ;

/* Variables and functions */
 int S_IFREG ; 
 int S_IRUGO ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (char*,int,int /*<<< orphan*/ ,struct fnic*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fnic_reset_debugfs_fops ; 
 int /*<<< orphan*/  fnic_stats_debugfs_fops ; 
 int /*<<< orphan*/  fnic_stats_debugfs_root ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 

void FUNC3(struct fnic *fnic)
{
	char name[16];

	FUNC2(name, sizeof(name), "host%d", fnic->lport->host->host_no);

	fnic->fnic_stats_debugfs_host = FUNC0(name,
						fnic_stats_debugfs_root);

	fnic->fnic_stats_debugfs_file = FUNC1("stats",
						S_IFREG|S_IRUGO|S_IWUSR,
						fnic->fnic_stats_debugfs_host,
						fnic,
						&fnic_stats_debugfs_fops);

	fnic->fnic_reset_debugfs_file = FUNC1("reset_stats",
						S_IFREG|S_IRUGO|S_IWUSR,
						fnic->fnic_stats_debugfs_host,
						fnic,
						&fnic_reset_debugfs_fops);
}