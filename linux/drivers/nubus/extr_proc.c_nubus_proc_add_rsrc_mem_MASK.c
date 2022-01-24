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
struct nubus_proc_pde_data {int dummy; } ;
struct nubus_dirent {int type; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (struct nubus_dirent const*) ; 
 struct nubus_proc_pde_data* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  nubus_proc_rsrc_show ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct proc_dir_entry*,int /*<<< orphan*/ ,struct nubus_proc_pde_data*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 

void FUNC4(struct proc_dir_entry *procdir,
			     const struct nubus_dirent *ent,
			     unsigned int size)
{
	char name[9];
	struct nubus_proc_pde_data *pde_data;

	if (!procdir)
		return;

	FUNC3(name, sizeof(name), "%x", ent->type);
	if (size)
		pde_data = FUNC1(FUNC0(ent), size);
	else
		pde_data = NULL;
	FUNC2(name, S_IFREG | 0444, procdir,
			nubus_proc_rsrc_show, pde_data);
}