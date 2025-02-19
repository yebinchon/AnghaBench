
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rtl8180_priv {int rfparam; int anaparam; int csthreshold; TYPE_1__* map; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_2__ {int CONFIG2; int TX_CONF; } ;


 int ANAPARAM_PWR0_MASK ;
 int ANAPARAM_PWR0_SHIFT ;
 int ANAPARAM_PWR1_MASK ;
 int ANAPARAM_PWR1_SHIFT ;
 int ANAPARAM_TXDACOFF_SHIFT ;
 int RF_PARAM_ANALOGPHY ;
 int RTL818X_CONFIG2_ANTENNA_DIV ;
 int RTL818X_TX_CONF_LOOPBACK_CONT ;
 int SA2400_ANAPARAM_PWR0_ON ;
 int SA2400_ANA_ANAPARAM_PWR1_ON ;
 int SA2400_DIG_ANAPARAM_PWR1_ON ;
 int SA2400_MAX_SENS ;
 int SA2400_REG4_FIRDAC_SHIFT ;
 int rtl8180_set_anaparam (struct rtl8180_priv*,int) ;
 int rtl8180_write_phy (struct ieee80211_hw*,int,int) ;
 int rtl818x_ioread32 (struct rtl8180_priv*,int *) ;
 int rtl818x_ioread8 (struct rtl8180_priv*,int *) ;
 int rtl818x_iowrite32 (struct rtl8180_priv*,int *,int) ;
 int* sa2400_chan ;
 int sa2400_write_phy_antenna (struct ieee80211_hw*,int) ;
 int write_sa2400 (struct ieee80211_hw*,int,int) ;

__attribute__((used)) static void sa2400_rf_init(struct ieee80211_hw *dev)
{
 struct rtl8180_priv *priv = dev->priv;
 u32 anaparam, txconf;
 u8 firdac;
 int analogphy = priv->rfparam & RF_PARAM_ANALOGPHY;

 anaparam = priv->anaparam;
 anaparam &= ~(1 << ANAPARAM_TXDACOFF_SHIFT);
 anaparam &= ~ANAPARAM_PWR1_MASK;
 anaparam &= ~ANAPARAM_PWR0_MASK;

 if (analogphy) {
  anaparam |= SA2400_ANA_ANAPARAM_PWR1_ON << ANAPARAM_PWR1_SHIFT;
  firdac = 0;
 } else {
  anaparam |= (SA2400_DIG_ANAPARAM_PWR1_ON << ANAPARAM_PWR1_SHIFT);
  anaparam |= (SA2400_ANAPARAM_PWR0_ON << ANAPARAM_PWR0_SHIFT);
  firdac = 1 << SA2400_REG4_FIRDAC_SHIFT;
 }

 rtl8180_set_anaparam(priv, anaparam);

 write_sa2400(dev, 0, sa2400_chan[0]);
 write_sa2400(dev, 1, 0xbb50);
 write_sa2400(dev, 2, 0x80);
 write_sa2400(dev, 3, 0);
 write_sa2400(dev, 4, 0x19340 | firdac);
 write_sa2400(dev, 5, 0x1dfb | (SA2400_MAX_SENS - 54) << 15);
 write_sa2400(dev, 4, 0x19348 | firdac);

 if (!analogphy)
  write_sa2400(dev, 4, 0x1938c);

 write_sa2400(dev, 4, 0x19340 | firdac);

 write_sa2400(dev, 0, sa2400_chan[0]);
 write_sa2400(dev, 1, 0xbb50);
 write_sa2400(dev, 2, 0x80);
 write_sa2400(dev, 3, 0);
 write_sa2400(dev, 4, 0x19344 | firdac);


 write_sa2400(dev, 6, 0x13ff | (1 << 23));
 write_sa2400(dev, 8, 0);

 if (analogphy) {
  rtl8180_set_anaparam(priv, anaparam |
         (1 << ANAPARAM_TXDACOFF_SHIFT));

  txconf = rtl818x_ioread32(priv, &priv->map->TX_CONF);
  rtl818x_iowrite32(priv, &priv->map->TX_CONF,
   txconf | RTL818X_TX_CONF_LOOPBACK_CONT);

  write_sa2400(dev, 4, 0x19341);



  write_sa2400(dev, 4, 0x19345);




  rtl818x_iowrite32(priv, &priv->map->TX_CONF, txconf);

  rtl8180_set_anaparam(priv, anaparam);
 }


 write_sa2400(dev, 4, 0x19341 | firdac);


 rtl8180_write_phy(dev, 0, 0x98);
 rtl8180_write_phy(dev, 3, 0x38);
 rtl8180_write_phy(dev, 4, 0xe0);
 rtl8180_write_phy(dev, 5, 0x90);
 rtl8180_write_phy(dev, 6, 0x1a);
 rtl8180_write_phy(dev, 7, 0x64);

 sa2400_write_phy_antenna(dev, 1);

 rtl8180_write_phy(dev, 0x11, 0x80);

 if (rtl818x_ioread8(priv, &priv->map->CONFIG2) &
     RTL818X_CONFIG2_ANTENNA_DIV)
  rtl8180_write_phy(dev, 0x12, 0xc7);
 else
  rtl8180_write_phy(dev, 0x12, 0x47);

 rtl8180_write_phy(dev, 0x13, 0x90 | priv->csthreshold);

 rtl8180_write_phy(dev, 0x19, 0x0);
 rtl8180_write_phy(dev, 0x1a, 0xa0);
}
