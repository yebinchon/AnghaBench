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
struct key {int dummy; } ;
struct afs_vldb_entry {int dummy; } ;
struct afs_vl_cursor {int dummy; } ;
struct afs_cell {int dummy; } ;

/* Variables and functions */
 int EDESTADDRREQ ; 
 int ERESTARTSYS ; 
 struct afs_vldb_entry* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct afs_vl_cursor*,struct afs_cell*,struct key*) ; 
 int FUNC2 (struct afs_vl_cursor*) ; 
 scalar_t__ FUNC3 (struct afs_vl_cursor*) ; 
 struct afs_vldb_entry* FUNC4 (struct afs_vl_cursor*,char const*,size_t) ; 

__attribute__((used)) static struct afs_vldb_entry *FUNC5(struct afs_cell *cell,
						 struct key *key,
						 const char *volname,
						 size_t volnamesz)
{
	struct afs_vldb_entry *vldb = FUNC0(-EDESTADDRREQ);
	struct afs_vl_cursor vc;
	int ret;

	if (!FUNC1(&vc, cell, key))
		return FUNC0(-ERESTARTSYS);

	while (FUNC3(&vc)) {
		vldb = FUNC4(&vc, volname, volnamesz);
	}

	ret = FUNC2(&vc);
	return ret < 0 ? FUNC0(ret) : vldb;
}