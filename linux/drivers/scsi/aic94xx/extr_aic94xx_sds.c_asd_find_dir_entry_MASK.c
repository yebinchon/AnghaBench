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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct asd_ocm_dir_ent {scalar_t__ type; int /*<<< orphan*/  size; int /*<<< orphan*/  offs; } ;
struct asd_ocm_dir {int num_de; struct asd_ocm_dir_ent* entry; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct asd_ocm_dir *dir, u8 type,
			      u32 *offs, u32 *size)
{
	int i;
	struct asd_ocm_dir_ent *ent;

	for (i = 0; i < dir->num_de; i++) {
		if (dir->entry[i].type == type)
			break;
	}
	if (i >= dir->num_de)
		return -ENOENT;
	ent = &dir->entry[i];
	*offs = (u32) FUNC0(ent->offs);
	*size = (u32) FUNC0(ent->size);
	return 0;
}