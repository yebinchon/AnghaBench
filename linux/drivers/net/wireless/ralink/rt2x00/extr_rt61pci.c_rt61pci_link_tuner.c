
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rt2x00_dev {scalar_t__ curr_band; int intf_associated; } ;
struct link_qual {int rssi; int vgc_level; int false_cca; } ;


 scalar_t__ NL80211_BAND_5GHZ ;
 scalar_t__ rt2x00_has_cap_external_lna_a (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_has_cap_external_lna_bg (struct rt2x00_dev*) ;
 int rt61pci_set_vgc (struct rt2x00_dev*,struct link_qual*,int) ;

__attribute__((used)) static void rt61pci_link_tuner(struct rt2x00_dev *rt2x00dev,
          struct link_qual *qual, const u32 count)
{
 u8 up_bound;
 u8 low_bound;




 if (rt2x00dev->curr_band == NL80211_BAND_5GHZ) {
  low_bound = 0x28;
  up_bound = 0x48;
  if (rt2x00_has_cap_external_lna_a(rt2x00dev)) {
   low_bound += 0x10;
   up_bound += 0x10;
  }
 } else {
  low_bound = 0x20;
  up_bound = 0x40;
  if (rt2x00_has_cap_external_lna_bg(rt2x00dev)) {
   low_bound += 0x10;
   up_bound += 0x10;
  }
 }





 if (!rt2x00dev->intf_associated)
  goto dynamic_cca_tune;




 if (qual->rssi >= -35) {
  rt61pci_set_vgc(rt2x00dev, qual, 0x60);
  return;
 }




 if (qual->rssi >= -58) {
  rt61pci_set_vgc(rt2x00dev, qual, up_bound);
  return;
 }




 if (qual->rssi >= -66) {
  rt61pci_set_vgc(rt2x00dev, qual, low_bound + 0x10);
  return;
 }




 if (qual->rssi >= -74) {
  rt61pci_set_vgc(rt2x00dev, qual, low_bound + 0x08);
  return;
 }





 up_bound -= 2 * (-74 - qual->rssi);
 if (low_bound > up_bound)
  up_bound = low_bound;

 if (qual->vgc_level > up_bound) {
  rt61pci_set_vgc(rt2x00dev, qual, up_bound);
  return;
 }

dynamic_cca_tune:





 if ((qual->false_cca > 512) && (qual->vgc_level < up_bound))
  rt61pci_set_vgc(rt2x00dev, qual, ++qual->vgc_level);
 else if ((qual->false_cca < 100) && (qual->vgc_level > low_bound))
  rt61pci_set_vgc(rt2x00dev, qual, --qual->vgc_level);
}
