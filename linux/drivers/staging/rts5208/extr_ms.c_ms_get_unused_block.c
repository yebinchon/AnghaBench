
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct zone_entry {scalar_t__ unused_blk_cnt; int* free_table; size_t get_index; } ;
struct ms_info {struct zone_entry* segment; } ;
struct rtsx_chip {struct ms_info ms_card; } ;


 size_t MS_FREE_TABLE_CNT ;

__attribute__((used)) static u16 ms_get_unused_block(struct rtsx_chip *chip, int seg_no)
{
 struct ms_info *ms_card = &chip->ms_card;
 struct zone_entry *segment;
 u16 phy_blk;

 segment = &ms_card->segment[seg_no];

 if (segment->unused_blk_cnt <= 0)
  return 0xFFFF;

 phy_blk = segment->free_table[segment->get_index];
 segment->free_table[segment->get_index++] = 0xFFFF;
 if (segment->get_index >= MS_FREE_TABLE_CNT)
  segment->get_index = 0;

 segment->unused_blk_cnt--;

 return phy_blk;
}
