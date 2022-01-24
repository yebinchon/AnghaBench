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
struct afs_volume {int dummy; } ;
struct afs_vldb_entry {unsigned long flags; int /*<<< orphan*/  error; } ;
struct afs_fs_context {unsigned long type; scalar_t__ force; int /*<<< orphan*/  volnamesz; int /*<<< orphan*/  volname; int /*<<< orphan*/  key; int /*<<< orphan*/  cell; } ;

/* Variables and functions */
 unsigned long AFSVL_ROVOL ; 
 unsigned long AFSVL_RWVOL ; 
 int /*<<< orphan*/  AFS_VLDB_HAS_RO ; 
 int /*<<< orphan*/  AFS_VLDB_HAS_RW ; 
 int /*<<< orphan*/  AFS_VLDB_QUERY_ERROR ; 
 int /*<<< orphan*/  ENOMEDIUM ; 
 struct afs_volume* FUNC0 (struct afs_vldb_entry*) ; 
 struct afs_volume* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct afs_vldb_entry*) ; 
 struct afs_volume* FUNC3 (struct afs_fs_context*,struct afs_vldb_entry*,unsigned long) ; 
 struct afs_vldb_entry* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_vldb_entry*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,unsigned long*) ; 

struct afs_volume *FUNC7(struct afs_fs_context *params)
{
	struct afs_vldb_entry *vldb;
	struct afs_volume *volume;
	unsigned long type_mask = 1UL << params->type;

	vldb = FUNC4(params->cell, params->key,
				  params->volname, params->volnamesz);
	if (FUNC2(vldb))
		return FUNC0(vldb);

	if (FUNC6(AFS_VLDB_QUERY_ERROR, &vldb->flags)) {
		volume = FUNC1(vldb->error);
		goto error;
	}

	/* Make the final decision on the type we want */
	volume = FUNC1(-ENOMEDIUM);
	if (params->force) {
		if (!(vldb->flags & type_mask))
			goto error;
	} else if (FUNC6(AFS_VLDB_HAS_RO, &vldb->flags)) {
		params->type = AFSVL_ROVOL;
	} else if (FUNC6(AFS_VLDB_HAS_RW, &vldb->flags)) {
		params->type = AFSVL_RWVOL;
	} else {
		goto error;
	}

	type_mask = 1UL << params->type;
	volume = FUNC3(params, vldb, type_mask);

error:
	FUNC5(vldb);
	return volume;
}