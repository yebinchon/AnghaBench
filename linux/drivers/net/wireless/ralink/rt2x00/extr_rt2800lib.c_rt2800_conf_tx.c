
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct rt2x00_field32 {int bit_offset; int bit_mask; } ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int dummy; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;
struct data_queue {int cw_max; int cw_min; int aifs; int txop; } ;


 scalar_t__ EDCA_AC0_CFG ;
 struct rt2x00_field32 EDCA_AC0_CFG_AIFSN ;
 struct rt2x00_field32 EDCA_AC0_CFG_CWMAX ;
 struct rt2x00_field32 EDCA_AC0_CFG_CWMIN ;
 struct rt2x00_field32 EDCA_AC0_CFG_TX_OP ;
 scalar_t__ WMM_AIFSN_CFG ;
 scalar_t__ WMM_CWMAX_CFG ;
 scalar_t__ WMM_CWMIN_CFG ;
 scalar_t__ WMM_TXOP0_CFG ;
 scalar_t__ rt2800_register_read (struct rt2x00_dev*,scalar_t__) ;
 int rt2800_register_write (struct rt2x00_dev*,scalar_t__,scalar_t__) ;
 int rt2x00_set_field32 (scalar_t__*,struct rt2x00_field32,int ) ;
 int rt2x00mac_conf_tx (struct ieee80211_hw*,struct ieee80211_vif*,int,struct ieee80211_tx_queue_params const*) ;
 struct data_queue* rt2x00queue_get_tx_queue (struct rt2x00_dev*,int) ;

int rt2800_conf_tx(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif, u16 queue_idx,
     const struct ieee80211_tx_queue_params *params)
{
 struct rt2x00_dev *rt2x00dev = hw->priv;
 struct data_queue *queue;
 struct rt2x00_field32 field;
 int retval;
 u32 reg;
 u32 offset;







 retval = rt2x00mac_conf_tx(hw, vif, queue_idx, params);
 if (retval)
  return retval;





 if (queue_idx >= 4)
  return 0;

 queue = rt2x00queue_get_tx_queue(rt2x00dev, queue_idx);


 offset = WMM_TXOP0_CFG + (sizeof(u32) * (!!(queue_idx & 2)));
 field.bit_offset = (queue_idx & 1) * 16;
 field.bit_mask = 0xffff << field.bit_offset;

 reg = rt2800_register_read(rt2x00dev, offset);
 rt2x00_set_field32(&reg, field, queue->txop);
 rt2800_register_write(rt2x00dev, offset, reg);


 field.bit_offset = queue_idx * 4;
 field.bit_mask = 0xf << field.bit_offset;

 reg = rt2800_register_read(rt2x00dev, WMM_AIFSN_CFG);
 rt2x00_set_field32(&reg, field, queue->aifs);
 rt2800_register_write(rt2x00dev, WMM_AIFSN_CFG, reg);

 reg = rt2800_register_read(rt2x00dev, WMM_CWMIN_CFG);
 rt2x00_set_field32(&reg, field, queue->cw_min);
 rt2800_register_write(rt2x00dev, WMM_CWMIN_CFG, reg);

 reg = rt2800_register_read(rt2x00dev, WMM_CWMAX_CFG);
 rt2x00_set_field32(&reg, field, queue->cw_max);
 rt2800_register_write(rt2x00dev, WMM_CWMAX_CFG, reg);


 offset = EDCA_AC0_CFG + (sizeof(u32) * queue_idx);

 reg = rt2800_register_read(rt2x00dev, offset);
 rt2x00_set_field32(&reg, EDCA_AC0_CFG_TX_OP, queue->txop);
 rt2x00_set_field32(&reg, EDCA_AC0_CFG_AIFSN, queue->aifs);
 rt2x00_set_field32(&reg, EDCA_AC0_CFG_CWMIN, queue->cw_min);
 rt2x00_set_field32(&reg, EDCA_AC0_CFG_CWMAX, queue->cw_max);
 rt2800_register_write(rt2x00dev, offset, reg);

 return 0;
}
