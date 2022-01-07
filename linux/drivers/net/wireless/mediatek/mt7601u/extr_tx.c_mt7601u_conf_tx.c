
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mt7601u_dev {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int txop; int aifs; scalar_t__ cw_max; scalar_t__ cw_min; } ;
struct ieee80211_hw {struct mt7601u_dev* priv; } ;


 int FIELD_PREP (int ,int) ;
 int MT_EDCA_CFG_AC (int) ;
 int MT_EDCA_CFG_AIFSN ;
 int MT_EDCA_CFG_CWMAX ;
 int MT_EDCA_CFG_CWMIN ;
 int MT_EDCA_CFG_TXOP ;
 int MT_WMM_AIFSN ;
 int MT_WMM_AIFSN_MASK ;
 int MT_WMM_AIFSN_SHIFT (int) ;
 int MT_WMM_CWMAX ;
 int MT_WMM_CWMAX_MASK ;
 int MT_WMM_CWMAX_SHIFT (int) ;
 int MT_WMM_CWMIN ;
 int MT_WMM_CWMIN_MASK ;
 int MT_WMM_CWMIN_SHIFT (int) ;
 int MT_WMM_TXOP (int) ;
 int MT_WMM_TXOP_MASK ;
 int MT_WMM_TXOP_SHIFT (int) ;
 int WARN_ON (int) ;
 int fls (scalar_t__) ;
 int mt76_rr (struct mt7601u_dev*,int ) ;
 int mt76_wr (struct mt7601u_dev*,int ,int) ;
 int q2hwq (int ) ;

int mt7601u_conf_tx(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
      u16 queue, const struct ieee80211_tx_queue_params *params)
{
 struct mt7601u_dev *dev = hw->priv;
 u8 cw_min = 5, cw_max = 10, hw_q = q2hwq(queue);
 u32 val;





 if (params->cw_min)
  cw_min = fls(params->cw_min);
 if (params->cw_max)
  cw_max = fls(params->cw_max);

 WARN_ON(params->txop > 0xff);
 WARN_ON(params->aifs > 0xf);
 WARN_ON(cw_min > 0xf);
 WARN_ON(cw_max > 0xf);

 val = FIELD_PREP(MT_EDCA_CFG_AIFSN, params->aifs) |
       FIELD_PREP(MT_EDCA_CFG_CWMIN, cw_min) |
       FIELD_PREP(MT_EDCA_CFG_CWMAX, cw_max);




 if (!hw_q)
  val |= 0x60;
 else
  val |= FIELD_PREP(MT_EDCA_CFG_TXOP, params->txop);
 mt76_wr(dev, MT_EDCA_CFG_AC(hw_q), val);

 val = mt76_rr(dev, MT_WMM_TXOP(hw_q));
 val &= ~(MT_WMM_TXOP_MASK << MT_WMM_TXOP_SHIFT(hw_q));
 val |= params->txop << MT_WMM_TXOP_SHIFT(hw_q);
 mt76_wr(dev, MT_WMM_TXOP(hw_q), val);

 val = mt76_rr(dev, MT_WMM_AIFSN);
 val &= ~(MT_WMM_AIFSN_MASK << MT_WMM_AIFSN_SHIFT(hw_q));
 val |= params->aifs << MT_WMM_AIFSN_SHIFT(hw_q);
 mt76_wr(dev, MT_WMM_AIFSN, val);

 val = mt76_rr(dev, MT_WMM_CWMIN);
 val &= ~(MT_WMM_CWMIN_MASK << MT_WMM_CWMIN_SHIFT(hw_q));
 val |= cw_min << MT_WMM_CWMIN_SHIFT(hw_q);
 mt76_wr(dev, MT_WMM_CWMIN, val);

 val = mt76_rr(dev, MT_WMM_CWMAX);
 val &= ~(MT_WMM_CWMAX_MASK << MT_WMM_CWMAX_SHIFT(hw_q));
 val |= cw_max << MT_WMM_CWMAX_SHIFT(hw_q);
 mt76_wr(dev, MT_WMM_CWMAX, val);

 return 0;
}
