
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {scalar_t__ intf_associated; } ;
struct link_qual {int rssi; int vgc_level_reg; int vgc_level; int false_cca; } ;


 scalar_t__ RT2560_VERSION_D ;
 int rt2500pci_set_vgc (struct rt2x00_dev*,struct link_qual*,int) ;
 scalar_t__ rt2x00_rev (struct rt2x00_dev*) ;

__attribute__((used)) static void rt2500pci_link_tuner(struct rt2x00_dev *rt2x00dev,
     struct link_qual *qual, const u32 count)
{





 if (rt2x00_rev(rt2x00dev) < RT2560_VERSION_D &&
     rt2x00dev->intf_associated && count > 20)
  return;







 if (rt2x00_rev(rt2x00dev) < RT2560_VERSION_D ||
     !rt2x00dev->intf_associated)
  goto dynamic_cca_tune;






 if (qual->rssi < -80 && count > 20) {
  if (qual->vgc_level_reg >= 0x41)
   rt2500pci_set_vgc(rt2x00dev, qual, qual->vgc_level);
  return;
 }




 if (qual->rssi >= -58) {
  rt2500pci_set_vgc(rt2x00dev, qual, 0x50);
  return;
 }




 if (qual->rssi >= -74) {
  rt2500pci_set_vgc(rt2x00dev, qual, 0x41);
  return;
 }





 if (qual->vgc_level_reg >= 0x41) {
  rt2500pci_set_vgc(rt2x00dev, qual, qual->vgc_level);
  return;
 }

dynamic_cca_tune:





 if (qual->false_cca > 512 && qual->vgc_level_reg < 0x40)
  rt2500pci_set_vgc(rt2x00dev, qual, ++qual->vgc_level_reg);
 else if (qual->false_cca < 100 && qual->vgc_level_reg > 0x32)
  rt2500pci_set_vgc(rt2x00dev, qual, --qual->vgc_level_reg);
}
