
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct zone_entry {size_t* l2p_table; } ;
struct xd_info {struct zone_entry* zone; } ;
struct rtsx_chip {struct xd_info xd_card; } ;



__attribute__((used)) static void xd_set_l2p_tbl(struct rtsx_chip *chip,
      int zone_no, u16 log_off, u16 phy_off)
{
 struct xd_info *xd_card = &chip->xd_card;
 struct zone_entry *zone;

 zone = &xd_card->zone[zone_no];
 zone->l2p_table[log_off] = phy_off;
}
