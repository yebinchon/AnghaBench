
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
struct antenna_setup {int rx; int tx; } ;




 int ANTENNA_SW_DIVERSITY ;
 int BBPCSR1 ;
 int BBPCSR1_CCK ;
 int BBPCSR1_CCK_FLIP ;
 int BBPCSR1_OFDM ;
 int BBPCSR1_OFDM_FLIP ;
 int BBP_R14_RX_ANTENNA ;
 int BBP_R14_RX_IQ_FLIP ;
 int BBP_R2_TX_ANTENNA ;
 int BBP_R2_TX_IQ_FLIP ;
 int BUG_ON (int) ;
 int RF2525E ;
 int RF5222 ;
 int rt2500pci_bbp_read (struct rt2x00_dev*,int) ;
 int rt2500pci_bbp_write (struct rt2x00_dev*,int,int ) ;
 scalar_t__ rt2x00_rf (struct rt2x00_dev*,int ) ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00_set_field8 (int *,int ,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static void rt2500pci_config_ant(struct rt2x00_dev *rt2x00dev,
     struct antenna_setup *ant)
{
 u32 reg;
 u8 r14;
 u8 r2;





 BUG_ON(ant->rx == ANTENNA_SW_DIVERSITY ||
        ant->tx == ANTENNA_SW_DIVERSITY);

 reg = rt2x00mmio_register_read(rt2x00dev, BBPCSR1);
 r14 = rt2500pci_bbp_read(rt2x00dev, 14);
 r2 = rt2500pci_bbp_read(rt2x00dev, 2);




 switch (ant->tx) {
 case 129:
  rt2x00_set_field8(&r2, BBP_R2_TX_ANTENNA, 0);
  rt2x00_set_field32(&reg, BBPCSR1_CCK, 0);
  rt2x00_set_field32(&reg, BBPCSR1_OFDM, 0);
  break;
 case 128:
 default:
  rt2x00_set_field8(&r2, BBP_R2_TX_ANTENNA, 2);
  rt2x00_set_field32(&reg, BBPCSR1_CCK, 2);
  rt2x00_set_field32(&reg, BBPCSR1_OFDM, 2);
  break;
 }




 switch (ant->rx) {
 case 129:
  rt2x00_set_field8(&r14, BBP_R14_RX_ANTENNA, 0);
  break;
 case 128:
 default:
  rt2x00_set_field8(&r14, BBP_R14_RX_ANTENNA, 2);
  break;
 }




 if (rt2x00_rf(rt2x00dev, RF2525E) || rt2x00_rf(rt2x00dev, RF5222)) {
  rt2x00_set_field8(&r2, BBP_R2_TX_IQ_FLIP, 1);
  rt2x00_set_field32(&reg, BBPCSR1_CCK_FLIP, 1);
  rt2x00_set_field32(&reg, BBPCSR1_OFDM_FLIP, 1);




  if (rt2x00_rf(rt2x00dev, RF2525E))
   rt2x00_set_field8(&r14, BBP_R14_RX_IQ_FLIP, 0);
 } else {
  rt2x00_set_field32(&reg, BBPCSR1_CCK_FLIP, 0);
  rt2x00_set_field32(&reg, BBPCSR1_OFDM_FLIP, 0);
 }

 rt2x00mmio_register_write(rt2x00dev, BBPCSR1, reg);
 rt2500pci_bbp_write(rt2x00dev, 14, r14);
 rt2500pci_bbp_write(rt2x00dev, 2, r2);
}
