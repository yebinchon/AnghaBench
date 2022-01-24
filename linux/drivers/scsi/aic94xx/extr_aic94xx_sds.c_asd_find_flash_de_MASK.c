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
typedef  int /*<<< orphan*/  u32 ;
struct asd_flash_dir {struct asd_flash_de* dir_entry; } ;
struct asd_flash_de {int /*<<< orphan*/  pad_size; int /*<<< orphan*/  offs; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FLASH_DE_TYPE_MASK ; 
 int FLASH_MAX_DIR_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct asd_flash_dir *flash_dir, u32 entry_type,
			     u32 *offs, u32 *size)
{
	int i;
	struct asd_flash_de *de;

	for (i = 0; i < FLASH_MAX_DIR_ENTRIES; i++) {
		u32 type = FUNC0(flash_dir->dir_entry[i].type);

		type &= FLASH_DE_TYPE_MASK;
		if (type == entry_type)
			break;
	}
	if (i >= FLASH_MAX_DIR_ENTRIES)
		return -ENOENT;
	de = &flash_dir->dir_entry[i];
	*offs = FUNC0(de->offs);
	*size = FUNC0(de->pad_size);
	return 0;
}