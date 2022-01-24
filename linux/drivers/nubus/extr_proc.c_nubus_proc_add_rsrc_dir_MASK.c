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
struct proc_dir_entry {int dummy; } ;
struct nubus_dirent {int type; } ;
struct nubus_board {int lanes; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 struct proc_dir_entry* FUNC0 (char*,int,struct proc_dir_entry*,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 

struct proc_dir_entry *FUNC2(struct proc_dir_entry *procdir,
					       const struct nubus_dirent *ent,
					       struct nubus_board *board)
{
	char name[9];
	int lanes = board->lanes;

	if (!procdir)
		return NULL;
	FUNC1(name, sizeof(name), "%x", ent->type);
	return FUNC0(name, 0555, procdir, (void *)lanes);
}