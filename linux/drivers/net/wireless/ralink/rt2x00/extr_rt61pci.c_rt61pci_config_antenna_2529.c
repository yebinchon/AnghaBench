
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt2x00_dev {int dummy; } ;
struct antenna_setup {int rx; } ;





 int BBP_R4_RX_ANTENNA_CONTROL ;
 int BBP_R77_RX_ANTENNA ;
 int rt2x00_set_field8 (int *,int ,int) ;
 int rt61pci_bbp_read (struct rt2x00_dev*,int) ;
 int rt61pci_bbp_write (struct rt2x00_dev*,int,int ) ;
 int rt61pci_config_antenna_2529_rx (struct rt2x00_dev*,int,int) ;

__attribute__((used)) static void rt61pci_config_antenna_2529(struct rt2x00_dev *rt2x00dev,
     struct antenna_setup *ant)
{
 u8 r3;
 u8 r4;
 u8 r77;

 r3 = rt61pci_bbp_read(rt2x00dev, 3);
 r4 = rt61pci_bbp_read(rt2x00dev, 4);
 r77 = rt61pci_bbp_read(rt2x00dev, 77);




 switch (ant->rx) {
 case 130:
  rt2x00_set_field8(&r4, BBP_R4_RX_ANTENNA_CONTROL, 1);
  rt2x00_set_field8(&r77, BBP_R77_RX_ANTENNA, 0);
  rt61pci_config_antenna_2529_rx(rt2x00dev, 0, 0);
  break;
 case 128:





 case 129:
 default:
  rt2x00_set_field8(&r4, BBP_R4_RX_ANTENNA_CONTROL, 1);
  rt2x00_set_field8(&r77, BBP_R77_RX_ANTENNA, 3);
  rt61pci_config_antenna_2529_rx(rt2x00dev, 1, 1);
  break;
 }

 rt61pci_bbp_write(rt2x00dev, 77, r77);
 rt61pci_bbp_write(rt2x00dev, 3, r3);
 rt61pci_bbp_write(rt2x00dev, 4, r4);
}
