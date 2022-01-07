
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct zone_entry {size_t* l2p_table; } ;
struct ms_info {struct zone_entry* segment; } ;
struct rtsx_chip {struct ms_info ms_card; } ;



__attribute__((used)) static void ms_set_l2p_tbl(struct rtsx_chip *chip,
      int seg_no, u16 log_off, u16 phy_blk)
{
 struct ms_info *ms_card = &chip->ms_card;
 struct zone_entry *segment;

 if (!ms_card->segment)
  return;

 segment = &ms_card->segment[seg_no];
 if (segment->l2p_table)
  segment->l2p_table[log_off] = phy_blk;
}
