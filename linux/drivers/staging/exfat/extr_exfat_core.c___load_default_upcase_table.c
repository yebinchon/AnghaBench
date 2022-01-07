
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct super_block {int dummy; } ;
struct fs_info_t {int** vol_utbl; } ;
typedef int s32 ;
struct TYPE_2__ {struct fs_info_t fs_info; } ;


 TYPE_1__* EXFAT_SB (struct super_block*) ;
 int FFS_ERROR ;
 int FFS_MEMORYERR ;
 int FFS_SUCCESS ;
 int GET16 (scalar_t__) ;
 int GFP_KERNEL ;
 int LOW_INDEX_BIT ;
 int NUM_UPCASE ;
 int UTBL_COL_COUNT ;
 int UTBL_ROW_COUNT ;
 int free_upcase_table (struct super_block*) ;
 int get_col_index (int) ;
 size_t get_row_index (int) ;
 int** kmalloc (int,int ) ;
 int* kmalloc_array (int,int,int ) ;
 int memset (int**,int ,int) ;
 int pr_debug (char*,int,...) ;
 scalar_t__ uni_upcase ;

__attribute__((used)) static s32 __load_default_upcase_table(struct super_block *sb)
{
 int i, ret = FFS_ERROR;
 u32 j;
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);

 bool skip = 0;
 u32 index = 0;
 u16 uni = 0;
 u16 **upcase_table;

 upcase_table = p_fs->vol_utbl = kmalloc(UTBL_COL_COUNT * sizeof(u16 *),
      GFP_KERNEL);
 if (!upcase_table)
  return FFS_MEMORYERR;
 memset(upcase_table, 0, UTBL_COL_COUNT * sizeof(u16 *));

 for (i = 0; index <= 0xFFFF && i < NUM_UPCASE * 2; i += 2) {
  uni = GET16(uni_upcase + i);
  if (skip) {
   pr_debug("skip from 0x%X ", index);
   index += uni;
   pr_debug("to 0x%X (amount of 0x%X)\n", index, uni);
   skip = 0;
  } else if (uni == index) {
   index++;
  } else if (uni == 0xFFFF) {
   skip = 1;
  } else {
   u16 col_index = get_col_index(index);

   if (!upcase_table[col_index]) {
    pr_debug("alloc = 0x%X\n", col_index);
    upcase_table[col_index] = kmalloc_array(UTBL_ROW_COUNT,
         sizeof(u16),
         GFP_KERNEL);
    if (!upcase_table[col_index]) {
     ret = FFS_MEMORYERR;
     goto error;
    }

    for (j = 0; j < UTBL_ROW_COUNT; j++)
     upcase_table[col_index][j] = (col_index << LOW_INDEX_BIT) | j;
   }

   upcase_table[col_index][get_row_index(index)] = uni;
   index++;
  }
 }

 if (index >= 0xFFFF)
  return FFS_SUCCESS;

error:

 free_upcase_table(sb);
 return ret;
}
