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
struct ceph_dir_file_info {char* last_name; unsigned int next_offset; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC4(struct ceph_dir_file_info *dfi, const char *name,
		            int len, unsigned next_offset)
{
	char *buf = FUNC2(len+1, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;
	FUNC1(dfi->last_name);
	dfi->last_name = buf;
	FUNC3(dfi->last_name, name, len);
	dfi->last_name[len] = 0;
	dfi->next_offset = next_offset;
	FUNC0("note_last_dentry '%s'\n", dfi->last_name);
	return 0;
}