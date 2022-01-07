
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct zone_entry {int unused_blk_cnt; int set_index; scalar_t__* free_table; } ;
struct xd_info {int zone_cnt; struct zone_entry* zone; } ;
struct rtsx_chip {struct xd_info xd_card; } ;


 scalar_t__ STATUS_SUCCESS ;
 int XD_FREE_TABLE_CNT ;
 int dev_dbg (int ,char*,...) ;
 int free_zone (struct zone_entry*) ;
 int rtsx_dev (struct rtsx_chip*) ;
 scalar_t__ xd_build_l2p_tbl (struct rtsx_chip*,int) ;

__attribute__((used)) static void xd_set_unused_block(struct rtsx_chip *chip, u32 phy_blk)
{
 struct xd_info *xd_card = &chip->xd_card;
 struct zone_entry *zone;
 int zone_no;

 zone_no = (int)phy_blk >> 10;
 if (zone_no >= xd_card->zone_cnt) {
  dev_dbg(rtsx_dev(chip), "Set unused block to invalid zone (zone_no = %d, zone_cnt = %d)\n",
   zone_no, xd_card->zone_cnt);
  return;
 }
 zone = &xd_card->zone[zone_no];

 if (!zone->free_table) {
  if (xd_build_l2p_tbl(chip, zone_no) != STATUS_SUCCESS)
   return;
 }

 if ((zone->set_index >= XD_FREE_TABLE_CNT) ||
     (zone->set_index < 0)) {
  free_zone(zone);
  dev_dbg(rtsx_dev(chip), "Set unused block fail, invalid set_index\n");
  return;
 }

 dev_dbg(rtsx_dev(chip), "Set unused block to index %d\n",
  zone->set_index);

 zone->free_table[zone->set_index++] = (u16)(phy_blk & 0x3ff);
 if (zone->set_index >= XD_FREE_TABLE_CNT)
  zone->set_index = 0;
 zone->unused_blk_cnt++;
}
