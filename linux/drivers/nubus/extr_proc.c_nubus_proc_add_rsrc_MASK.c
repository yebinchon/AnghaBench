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
struct nubus_dirent {int type; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nubus_proc_rsrc_show ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct proc_dir_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 

void FUNC3(struct proc_dir_entry *procdir,
			 const struct nubus_dirent *ent)
{
	char name[9];
	unsigned char *data = (unsigned char *)ent->data;

	if (!procdir)
		return;

	FUNC2(name, sizeof(name), "%x", ent->type);
	FUNC1(name, S_IFREG | 0444, procdir,
			nubus_proc_rsrc_show,
			FUNC0(data, 0));
}