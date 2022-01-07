
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct raid_map {int data_encryption_key_index; int volume_blk_size; } ;
struct pqi_encryption_info {int encrypt_tweak_upper; int encrypt_tweak_lower; int data_encryption_key_index; } ;


 int get_unaligned_le16 (int *) ;
 int get_unaligned_le32 (int *) ;
 int lower_32_bits (int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static inline void pqi_set_encryption_info(
 struct pqi_encryption_info *encryption_info, struct raid_map *raid_map,
 u64 first_block)
{
 u32 volume_blk_size;






 volume_blk_size = get_unaligned_le32(&raid_map->volume_blk_size);
 if (volume_blk_size != 512)
  first_block = (first_block * volume_blk_size) / 512;

 encryption_info->data_encryption_key_index =
  get_unaligned_le16(&raid_map->data_encryption_key_index);
 encryption_info->encrypt_tweak_lower = lower_32_bits(first_block);
 encryption_info->encrypt_tweak_upper = upper_32_bits(first_block);
}
