
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt2x00_dev {int dummy; } ;
struct antenna_setup {int rx; int tx; } ;





 int ANTENNA_SW_DIVERSITY ;
 int BBP_R1_TX_ANTENNA ;
 int BBP_R4_RX_ANTENNA ;
 int BUG_ON (int) ;
 int rt2400pci_bbp_read (struct rt2x00_dev*,int) ;
 int rt2400pci_bbp_write (struct rt2x00_dev*,int,int ) ;
 int rt2x00_set_field8 (int *,int ,int) ;

__attribute__((used)) static void rt2400pci_config_ant(struct rt2x00_dev *rt2x00dev,
     struct antenna_setup *ant)
{
 u8 r1;
 u8 r4;





 BUG_ON(ant->rx == ANTENNA_SW_DIVERSITY ||
        ant->tx == ANTENNA_SW_DIVERSITY);

 r4 = rt2400pci_bbp_read(rt2x00dev, 4);
 r1 = rt2400pci_bbp_read(rt2x00dev, 1);




 switch (ant->tx) {
 case 128:
  rt2x00_set_field8(&r1, BBP_R1_TX_ANTENNA, 1);
  break;
 case 130:
  rt2x00_set_field8(&r1, BBP_R1_TX_ANTENNA, 0);
  break;
 case 129:
 default:
  rt2x00_set_field8(&r1, BBP_R1_TX_ANTENNA, 2);
  break;
 }




 switch (ant->rx) {
 case 128:
  rt2x00_set_field8(&r4, BBP_R4_RX_ANTENNA, 1);
  break;
 case 130:
  rt2x00_set_field8(&r4, BBP_R4_RX_ANTENNA, 0);
  break;
 case 129:
 default:
  rt2x00_set_field8(&r4, BBP_R4_RX_ANTENNA, 2);
  break;
 }

 rt2400pci_bbp_write(rt2x00dev, 4, r4);
 rt2400pci_bbp_write(rt2x00dev, 1, r1);
}
