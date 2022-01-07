
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;


 int CCK_PROT_CFG ;
 int CCK_PROT_CFG_RTS_TH_EN ;
 int GF20_PROT_CFG ;
 int GF20_PROT_CFG_RTS_TH_EN ;
 int GF40_PROT_CFG ;
 int GF40_PROT_CFG_RTS_TH_EN ;
 scalar_t__ IEEE80211_MAX_RTS_THRESHOLD ;
 int MM20_PROT_CFG ;
 int MM20_PROT_CFG_RTS_TH_EN ;
 int MM40_PROT_CFG ;
 int MM40_PROT_CFG_RTS_TH_EN ;
 int OFDM_PROT_CFG ;
 int OFDM_PROT_CFG_RTS_TH_EN ;
 int TX_RTS_CFG ;
 int TX_RTS_CFG_RTS_THRES ;
 scalar_t__ rt2800_register_read (struct rt2x00_dev*,int ) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,scalar_t__) ;
 int rt2x00_set_field32 (scalar_t__*,int ,int) ;

int rt2800_set_rts_threshold(struct ieee80211_hw *hw, u32 value)
{
 struct rt2x00_dev *rt2x00dev = hw->priv;
 u32 reg;
 bool enabled = (value < IEEE80211_MAX_RTS_THRESHOLD);

 reg = rt2800_register_read(rt2x00dev, TX_RTS_CFG);
 rt2x00_set_field32(&reg, TX_RTS_CFG_RTS_THRES, value);
 rt2800_register_write(rt2x00dev, TX_RTS_CFG, reg);

 reg = rt2800_register_read(rt2x00dev, CCK_PROT_CFG);
 rt2x00_set_field32(&reg, CCK_PROT_CFG_RTS_TH_EN, enabled);
 rt2800_register_write(rt2x00dev, CCK_PROT_CFG, reg);

 reg = rt2800_register_read(rt2x00dev, OFDM_PROT_CFG);
 rt2x00_set_field32(&reg, OFDM_PROT_CFG_RTS_TH_EN, enabled);
 rt2800_register_write(rt2x00dev, OFDM_PROT_CFG, reg);

 reg = rt2800_register_read(rt2x00dev, MM20_PROT_CFG);
 rt2x00_set_field32(&reg, MM20_PROT_CFG_RTS_TH_EN, enabled);
 rt2800_register_write(rt2x00dev, MM20_PROT_CFG, reg);

 reg = rt2800_register_read(rt2x00dev, MM40_PROT_CFG);
 rt2x00_set_field32(&reg, MM40_PROT_CFG_RTS_TH_EN, enabled);
 rt2800_register_write(rt2x00dev, MM40_PROT_CFG, reg);

 reg = rt2800_register_read(rt2x00dev, GF20_PROT_CFG);
 rt2x00_set_field32(&reg, GF20_PROT_CFG_RTS_TH_EN, enabled);
 rt2800_register_write(rt2x00dev, GF20_PROT_CFG, reg);

 reg = rt2800_register_read(rt2x00dev, GF40_PROT_CFG);
 rt2x00_set_field32(&reg, GF40_PROT_CFG_RTS_TH_EN, enabled);
 rt2800_register_write(rt2x00dev, GF40_PROT_CFG, reg);

 return 0;
}
