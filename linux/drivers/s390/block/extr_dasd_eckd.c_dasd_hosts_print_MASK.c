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
typedef  int /*<<< orphan*/  sysplex ;
struct seq_file {int dummy; } ;
struct dasd_psf_query_host_access {scalar_t__ host_access_information; } ;
struct dasd_device {int /*<<< orphan*/  cdev; } ;
struct dasd_ckd_path_group_entry {unsigned long status_flags; unsigned long cylinder; scalar_t__ timestamp; int /*<<< orphan*/  sysplex_name; int /*<<< orphan*/  pgid; } ;
struct dasd_ckd_host_information {int entry_count; int entry_size; scalar_t__ entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int FUNC2 (struct dasd_device*,struct dasd_psf_query_host_access*) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_psf_query_host_access*) ; 
 struct dasd_psf_query_host_access* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC7(struct dasd_device *device, struct seq_file *m)
{
	struct dasd_psf_query_host_access *access;
	struct dasd_ckd_path_group_entry *entry;
	struct dasd_ckd_host_information *info;
	char sysplex[9] = "";
	int rc, i;

	access = FUNC4(sizeof(*access), GFP_NOIO);
	if (!access) {
		FUNC0(DBF_WARNING, device->cdev, "%s",
				"Could not allocate access buffer");
		return -ENOMEM;
	}
	rc = FUNC2(device, access);
	if (rc) {
		FUNC3(access);
		return rc;
	}

	info = (struct dasd_ckd_host_information *)
		access->host_access_information;
	for (i = 0; i < info->entry_count; i++) {
		entry = (struct dasd_ckd_path_group_entry *)
			(info->entry + i * info->entry_size);
		/* PGID */
		FUNC6(m, "pgid %*phN\n", 11, entry->pgid);
		/* FLAGS */
		FUNC6(m, "status_flags %02x\n", entry->status_flags);
		/* SYSPLEX NAME */
		FUNC5(&sysplex, &entry->sysplex_name, sizeof(sysplex) - 1);
		FUNC1(sysplex, sizeof(sysplex));
		FUNC6(m, "sysplex_name %8s\n", sysplex);
		/* SUPPORTED CYLINDER */
		FUNC6(m, "supported_cylinder %d\n", entry->cylinder);
		/* TIMESTAMP */
		FUNC6(m, "timestamp %lu\n", (unsigned long)
			   entry->timestamp);
	}
	FUNC3(access);

	return 0;
}