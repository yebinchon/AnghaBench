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
struct hisi_hba {int n_phy; int queue_count; struct hisi_hba* dq; struct hisi_hba* cq; struct hisi_hba* phy; struct dentry* debugfs_dump_dentry; struct dentry* debugfs_dir; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct dentry*,struct hisi_hba*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hisi_sas_debugfs_axi_fops ; 
 int /*<<< orphan*/  hisi_sas_debugfs_cq_fops ; 
 int /*<<< orphan*/  hisi_sas_debugfs_dq_fops ; 
 int /*<<< orphan*/  hisi_sas_debugfs_global_fops ; 
 int /*<<< orphan*/  hisi_sas_debugfs_iost_cache_fops ; 
 int /*<<< orphan*/  hisi_sas_debugfs_iost_fops ; 
 int /*<<< orphan*/  hisi_sas_debugfs_itct_cache_fops ; 
 int /*<<< orphan*/  hisi_sas_debugfs_itct_fops ; 
 int /*<<< orphan*/  hisi_sas_debugfs_port_fops ; 
 int /*<<< orphan*/  hisi_sas_debugfs_ras_fops ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 

__attribute__((used)) static void FUNC3(struct hisi_hba *hisi_hba)
{
	struct dentry *dump_dentry;
	struct dentry *dentry;
	char name[256];
	int p;
	int c;
	int d;

	/* Create dump dir inside device dir */
	dump_dentry = FUNC0("dump", hisi_hba->debugfs_dir);
	hisi_hba->debugfs_dump_dentry = dump_dentry;

	FUNC1("global", 0400, dump_dentry, hisi_hba,
			    &hisi_sas_debugfs_global_fops);

	/* Create port dir and files */
	dentry = FUNC0("port", dump_dentry);
	for (p = 0; p < hisi_hba->n_phy; p++) {
		FUNC2(name, 256, "%d", p);

		FUNC1(name, 0400, dentry, &hisi_hba->phy[p],
				    &hisi_sas_debugfs_port_fops);
	}

	/* Create CQ dir and files */
	dentry = FUNC0("cq", dump_dentry);
	for (c = 0; c < hisi_hba->queue_count; c++) {
		FUNC2(name, 256, "%d", c);

		FUNC1(name, 0400, dentry, &hisi_hba->cq[c],
				    &hisi_sas_debugfs_cq_fops);
	}

	/* Create DQ dir and files */
	dentry = FUNC0("dq", dump_dentry);
	for (d = 0; d < hisi_hba->queue_count; d++) {
		FUNC2(name, 256, "%d", d);

		FUNC1(name, 0400, dentry, &hisi_hba->dq[d],
				    &hisi_sas_debugfs_dq_fops);
	}

	FUNC1("iost", 0400, dump_dentry, hisi_hba,
			    &hisi_sas_debugfs_iost_fops);

	FUNC1("iost_cache", 0400, dump_dentry, hisi_hba,
			    &hisi_sas_debugfs_iost_cache_fops);

	FUNC1("itct", 0400, dump_dentry, hisi_hba,
			    &hisi_sas_debugfs_itct_fops);

	FUNC1("itct_cache", 0400, dump_dentry, hisi_hba,
			    &hisi_sas_debugfs_itct_cache_fops);

	FUNC1("axi", 0400, dump_dentry, hisi_hba,
			    &hisi_sas_debugfs_axi_fops);

	FUNC1("ras", 0400, dump_dentry, hisi_hba,
			    &hisi_sas_debugfs_ras_fops);

	return;
}