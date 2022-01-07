
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl8180_priv {scalar_t__ chip_family; int rx_ring_dma; int antenna_diversity_en; int antenna_diversity_default; TYPE_2__* rf; TYPE_3__* map; scalar_t__ map_pio; TYPE_1__* tx_ring; int anaparam; } ;
struct ieee80211_hw {int wiphy; struct rtl8180_priv* priv; } ;
struct TYPE_6__ {int TX_DMA_POLLING; int RF_PARA; int RF_TIMING; int RFPinsSelect; int RFPinsEnable; int RFPinsOutput; int PGSELECT; int CONFIG5; int INT_MIG; int TID_AC_MAP; int ACM_CONTROL; int TPPOLL_STOP; int EEPROM_CMD; int CONFIG3; int GP_ENABLE; int CARRIER_SENSE_COUNTER; int PHY_DELAY; int SECURITY; int RATE_FALLBACK; int WPA_CONF; int INT_TIMEOUT; int CONFIG2; int TBKDA; int TBEDA; int TVIDA; int TVODA; int TBDA; int TLPDA; int RDSAR; int MSR; int CMD; } ;
struct TYPE_5__ {int (* init ) (struct ieee80211_hw*) ;} ;
struct TYPE_4__ {int dma; } ;


 int * ARFR ;
 int ETIMEDOUT ;
 int * REG_ADDR1 (int) ;
 int * RFSW_CTRL ;
 scalar_t__ RTL818X_CHIP_FAMILY_RTL8180 ;
 scalar_t__ RTL818X_CHIP_FAMILY_RTL8185 ;
 scalar_t__ RTL818X_CHIP_FAMILY_RTL8187SE ;
 int RTL818X_CMD_RESET ;
 int RTL818X_EEPROM_CMD_CONFIG ;
 int RTL818X_EEPROM_CMD_LOAD ;
 int RTL818X_EEPROM_CMD_NORMAL ;
 int RTL818X_MSR_ENEDCA ;
 int RTL818x_TPPOLL_STOP_HI ;
 int RTL818x_TPPOLL_STOP_MG ;
 int RTL8225SE_ANAPARAM2_ON ;
 int RTL8225SE_ANAPARAM3 ;
 int RTL8225SE_ANAPARAM_ON ;
 int msleep (int) ;
 int rtl8180_conf_basic_rates (struct ieee80211_hw*,int) ;
 int rtl8180_config_cardbus (struct ieee80211_hw*) ;
 int rtl8180_int_disable (struct ieee80211_hw*) ;
 int rtl8180_set_anaparam (struct rtl8180_priv*,int ) ;
 int rtl8180_set_anaparam2 (struct rtl8180_priv*,int ) ;
 int rtl8180_set_anaparam3 (struct rtl8180_priv*,int ) ;
 int rtl8187se_mac_config (struct ieee80211_hw*) ;
 int rtl8187se_set_antenna_config (struct ieee80211_hw*,int ,int ) ;
 int rtl818x_ioread16 (struct rtl8180_priv*,int *) ;
 int rtl818x_ioread32 (struct rtl8180_priv*,int *) ;
 int rtl818x_ioread8 (struct rtl8180_priv*,int *) ;
 int rtl818x_iowrite16 (struct rtl8180_priv*,int *,int) ;
 int rtl818x_iowrite32 (struct rtl8180_priv*,int *,int) ;
 int rtl818x_iowrite8 (struct rtl8180_priv*,int *,int) ;
 int stub1 (struct ieee80211_hw*) ;
 int wiphy_err (int ,char*) ;

__attribute__((used)) static int rtl8180_init_hw(struct ieee80211_hw *dev)
{
 struct rtl8180_priv *priv = dev->priv;
 u16 reg;
 u32 reg32;

 rtl818x_iowrite8(priv, &priv->map->CMD, 0);
 rtl818x_ioread8(priv, &priv->map->CMD);
 msleep(10);


 rtl8180_int_disable(dev);
 rtl818x_ioread8(priv, &priv->map->CMD);

 reg = rtl818x_ioread8(priv, &priv->map->CMD);
 reg &= (1 << 1);
 reg |= RTL818X_CMD_RESET;
 rtl818x_iowrite8(priv, &priv->map->CMD, RTL818X_CMD_RESET);
 rtl818x_ioread8(priv, &priv->map->CMD);
 msleep(200);


 if (rtl818x_ioread8(priv, &priv->map->CMD) & RTL818X_CMD_RESET) {
  wiphy_err(dev->wiphy, "reset timeout!\n");
  return -ETIMEDOUT;
 }

 rtl818x_iowrite8(priv, &priv->map->EEPROM_CMD, RTL818X_EEPROM_CMD_LOAD);
 rtl818x_ioread8(priv, &priv->map->CMD);
 msleep(200);

 if (rtl818x_ioread8(priv, &priv->map->CONFIG3) & (1 << 3)) {
  rtl8180_config_cardbus(dev);
 }

 if (priv->chip_family == RTL818X_CHIP_FAMILY_RTL8187SE)
  rtl818x_iowrite8(priv, &priv->map->MSR, RTL818X_MSR_ENEDCA);
 else
  rtl818x_iowrite8(priv, &priv->map->MSR, 0);

 if (priv->chip_family == RTL818X_CHIP_FAMILY_RTL8180)
  rtl8180_set_anaparam(priv, priv->anaparam);

 rtl818x_iowrite32(priv, &priv->map->RDSAR, priv->rx_ring_dma);




 if (priv->chip_family != RTL818X_CHIP_FAMILY_RTL8187SE) {
  rtl818x_iowrite32(priv, &priv->map->TBDA,
      priv->tx_ring[1].dma);
  rtl818x_iowrite32(priv, &priv->map->TLPDA,
      priv->tx_ring[0].dma);
 } else {
  rtl818x_iowrite32(priv, &priv->map->TBDA,
      priv->tx_ring[4].dma);
  rtl818x_iowrite32(priv, &priv->map->TVODA,
      priv->tx_ring[0].dma);
  rtl818x_iowrite32(priv, &priv->map->TVIDA,
      priv->tx_ring[1].dma);
  rtl818x_iowrite32(priv, &priv->map->TBEDA,
      priv->tx_ring[2].dma);
  rtl818x_iowrite32(priv, &priv->map->TBKDA,
      priv->tx_ring[3].dma);
 }


 rtl818x_iowrite8(priv, &priv->map->EEPROM_CMD, RTL818X_EEPROM_CMD_CONFIG);
 reg = rtl818x_ioread8(priv, &priv->map->CONFIG2);
 rtl818x_iowrite8(priv, &priv->map->CONFIG2, reg & ~(1 << 3));
 if (priv->chip_family == RTL818X_CHIP_FAMILY_RTL8185) {
  reg = rtl818x_ioread8(priv, &priv->map->CONFIG2);
  rtl818x_iowrite8(priv, &priv->map->CONFIG2, reg | (1 << 4));
 }
 rtl818x_iowrite8(priv, &priv->map->EEPROM_CMD, RTL818X_EEPROM_CMD_NORMAL);





 rtl818x_iowrite32(priv, &priv->map->INT_TIMEOUT, 0);

 if (priv->chip_family != RTL818X_CHIP_FAMILY_RTL8180) {
  rtl818x_iowrite8(priv, &priv->map->WPA_CONF, 0);
  rtl818x_iowrite8(priv, &priv->map->RATE_FALLBACK, 0);
 } else {
  rtl818x_iowrite8(priv, &priv->map->SECURITY, 0);

  rtl818x_iowrite8(priv, &priv->map->PHY_DELAY, 0x6);
  rtl818x_iowrite8(priv, &priv->map->CARRIER_SENSE_COUNTER, 0x4C);
 }

 if (priv->chip_family == RTL818X_CHIP_FAMILY_RTL8185) {

  reg = rtl818x_ioread8(priv, &priv->map->GP_ENABLE);
  rtl818x_iowrite8(priv, &priv->map->GP_ENABLE, reg & ~(1 << 6));
  rtl818x_iowrite8(priv, &priv->map->EEPROM_CMD, RTL818X_EEPROM_CMD_CONFIG);
  reg = rtl818x_ioread8(priv, &priv->map->CONFIG3);
  rtl818x_iowrite8(priv, &priv->map->CONFIG3, reg | (1 << 2));
  rtl818x_iowrite8(priv, &priv->map->EEPROM_CMD, RTL818X_EEPROM_CMD_NORMAL);

  if (priv->map_pio) {
   u8 reg;

   reg = rtl818x_ioread8(priv, &priv->map->PGSELECT);
   rtl818x_iowrite8(priv, &priv->map->PGSELECT, reg | 1);
   rtl818x_iowrite8(priv, REG_ADDR1(0xff), 0x35);
   rtl818x_iowrite8(priv, &priv->map->PGSELECT, reg);
  } else
   rtl818x_iowrite8(priv, REG_ADDR1(0x1ff), 0x35);
 }

 if (priv->chip_family == RTL818X_CHIP_FAMILY_RTL8187SE) {


  rtl818x_iowrite16(priv, ARFR, 0xFFF);
  rtl818x_ioread16(priv, ARFR);


  rtl818x_iowrite8(priv, &priv->map->TPPOLL_STOP,
          RTL818x_TPPOLL_STOP_MG | RTL818x_TPPOLL_STOP_HI);

  rtl818x_iowrite8(priv, &priv->map->ACM_CONTROL, 0x00);
  rtl818x_iowrite16(priv, &priv->map->TID_AC_MAP, 0xFA50);

  rtl818x_iowrite16(priv, &priv->map->INT_MIG, 0);


  rtl8187se_mac_config(dev);

  rtl818x_iowrite16(priv, RFSW_CTRL, 0x569A);
  rtl818x_ioread16(priv, RFSW_CTRL);

  rtl8180_set_anaparam(priv, RTL8225SE_ANAPARAM_ON);
  rtl8180_set_anaparam2(priv, RTL8225SE_ANAPARAM2_ON);
  rtl8180_set_anaparam3(priv, RTL8225SE_ANAPARAM3);


  rtl818x_iowrite8(priv, &priv->map->CONFIG5,
       rtl818x_ioread8(priv, &priv->map->CONFIG5) & 0x7F);


  rtl818x_iowrite8(priv, &priv->map->PGSELECT,
       rtl818x_ioread8(priv, &priv->map->PGSELECT) | 0x08);

  rtl818x_iowrite16(priv, &priv->map->RFPinsOutput, 0x0480);
  rtl818x_iowrite16(priv, &priv->map->RFPinsEnable, 0x1BFF);
  rtl818x_iowrite16(priv, &priv->map->RFPinsSelect, 0x2488);

  rtl818x_iowrite32(priv, &priv->map->RF_TIMING, 0x4003);





  reg32 = rtl818x_ioread32(priv, &priv->map->RF_PARA);
  reg32 &= 0x00ffff00;
  reg32 |= 0xb8000054;
  rtl818x_iowrite32(priv, &priv->map->RF_PARA, reg32);
 } else

  rtl818x_iowrite8(priv, &priv->map->TX_DMA_POLLING,
       (1<<1) | (1<<2));

 priv->rf->init(dev);







 if (priv->chip_family == RTL818X_CHIP_FAMILY_RTL8180)
  rtl8180_conf_basic_rates(dev, 0x3);
 else
  rtl8180_conf_basic_rates(dev, 0x1f3);

 if (priv->chip_family == RTL818X_CHIP_FAMILY_RTL8187SE)
  rtl8187se_set_antenna_config(dev,
          priv->antenna_diversity_default,
          priv->antenna_diversity_en);
 return 0;
}
