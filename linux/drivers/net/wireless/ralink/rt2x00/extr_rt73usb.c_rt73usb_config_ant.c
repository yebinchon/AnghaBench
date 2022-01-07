
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {scalar_t__ curr_band; } ;
struct antenna_setup {scalar_t__ rx; scalar_t__ tx; } ;
struct antenna_sel {int * value; int word; } ;


 scalar_t__ ANTENNA_SW_DIVERSITY ;
 unsigned int ARRAY_SIZE (struct antenna_sel*) ;
 int BUG_ON (int) ;
 scalar_t__ NL80211_BAND_2GHZ ;
 scalar_t__ NL80211_BAND_5GHZ ;
 int PHY_CSR0 ;
 int PHY_CSR0_PA_PE_A ;
 int PHY_CSR0_PA_PE_BG ;
 int RF2527 ;
 int RF2528 ;
 int RF5225 ;
 int RF5226 ;
 struct antenna_sel* antenna_sel_a ;
 struct antenna_sel* antenna_sel_bg ;
 unsigned int rt2x00_has_cap_external_lna_a (struct rt2x00_dev*) ;
 unsigned int rt2x00_has_cap_external_lna_bg (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_rf (struct rt2x00_dev*,int ) ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00usb_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00usb_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt73usb_bbp_write (struct rt2x00_dev*,int ,int ) ;
 int rt73usb_config_antenna_2x (struct rt2x00_dev*,struct antenna_setup*) ;
 int rt73usb_config_antenna_5x (struct rt2x00_dev*,struct antenna_setup*) ;

__attribute__((used)) static void rt73usb_config_ant(struct rt2x00_dev *rt2x00dev,
          struct antenna_setup *ant)
{
 const struct antenna_sel *sel;
 unsigned int lna;
 unsigned int i;
 u32 reg;





 BUG_ON(ant->rx == ANTENNA_SW_DIVERSITY ||
        ant->tx == ANTENNA_SW_DIVERSITY);

 if (rt2x00dev->curr_band == NL80211_BAND_5GHZ) {
  sel = antenna_sel_a;
  lna = rt2x00_has_cap_external_lna_a(rt2x00dev);
 } else {
  sel = antenna_sel_bg;
  lna = rt2x00_has_cap_external_lna_bg(rt2x00dev);
 }

 for (i = 0; i < ARRAY_SIZE(antenna_sel_a); i++)
  rt73usb_bbp_write(rt2x00dev, sel[i].word, sel[i].value[lna]);

 reg = rt2x00usb_register_read(rt2x00dev, PHY_CSR0);

 rt2x00_set_field32(&reg, PHY_CSR0_PA_PE_BG,
      (rt2x00dev->curr_band == NL80211_BAND_2GHZ));
 rt2x00_set_field32(&reg, PHY_CSR0_PA_PE_A,
      (rt2x00dev->curr_band == NL80211_BAND_5GHZ));

 rt2x00usb_register_write(rt2x00dev, PHY_CSR0, reg);

 if (rt2x00_rf(rt2x00dev, RF5226) || rt2x00_rf(rt2x00dev, RF5225))
  rt73usb_config_antenna_5x(rt2x00dev, ant);
 else if (rt2x00_rf(rt2x00dev, RF2528) || rt2x00_rf(rt2x00dev, RF2527))
  rt73usb_config_antenna_2x(rt2x00dev, ant);
}
