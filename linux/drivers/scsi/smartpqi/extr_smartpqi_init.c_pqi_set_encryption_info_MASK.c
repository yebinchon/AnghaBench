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
typedef  int u64 ;
typedef  int u32 ;
struct raid_map {int /*<<< orphan*/  data_encryption_key_index; int /*<<< orphan*/  volume_blk_size; } ;
struct pqi_encryption_info {int /*<<< orphan*/  encrypt_tweak_upper; int /*<<< orphan*/  encrypt_tweak_lower; int /*<<< orphan*/  data_encryption_key_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static inline void FUNC4(
	struct pqi_encryption_info *encryption_info, struct raid_map *raid_map,
	u64 first_block)
{
	u32 volume_blk_size;

	/*
	 * Set the encryption tweak values based on logical block address.
	 * If the block size is 512, the tweak value is equal to the LBA.
	 * For other block sizes, tweak value is (LBA * block size) / 512.
	 */
	volume_blk_size = FUNC1(&raid_map->volume_blk_size);
	if (volume_blk_size != 512)
		first_block = (first_block * volume_blk_size) / 512;

	encryption_info->data_encryption_key_index =
		FUNC0(&raid_map->data_encryption_key_index);
	encryption_info->encrypt_tweak_lower = FUNC2(first_block);
	encryption_info->encrypt_tweak_upper = FUNC3(first_block);
}