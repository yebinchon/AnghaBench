
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


 scalar_t__ AC_TXOP_CSR0 ;
 scalar_t__ AIFSN_CSR ;
 scalar_t__ CWMAX_CSR ;
 scalar_t__ CWMIN_CSR ;
 int rt2x00_set_field32 (scalar_t__*,struct rt2x00_field32,int ) ;
 int rt2x00mac_conf_tx (struct ieee80211_hw*,struct ieee80211_vif*,int,struct ieee80211_tx_queue_params const*) ;
 struct data_queue* rt2x00queue_get_tx_queue (struct rt2x00_dev*,int) ;
 scalar_t__ rt2x00usb_register_read (struct rt2x00_dev*,scalar_t__) ;
 int rt2x00usb_register_write (struct rt2x00_dev*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int rt73usb_conf_tx(struct ieee80211_hw *hw,
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


 offset = AC_TXOP_CSR0 + (sizeof(u32) * (!!(queue_idx & 2)));
 field.bit_offset = (queue_idx & 1) * 16;
 field.bit_mask = 0xffff << field.bit_offset;

 reg = rt2x00usb_register_read(rt2x00dev, offset);
 rt2x00_set_field32(&reg, field, queue->txop);
 rt2x00usb_register_write(rt2x00dev, offset, reg);


 field.bit_offset = queue_idx * 4;
 field.bit_mask = 0xf << field.bit_offset;

 reg = rt2x00usb_register_read(rt2x00dev, AIFSN_CSR);
 rt2x00_set_field32(&reg, field, queue->aifs);
 rt2x00usb_register_write(rt2x00dev, AIFSN_CSR, reg);

 reg = rt2x00usb_register_read(rt2x00dev, CWMIN_CSR);
 rt2x00_set_field32(&reg, field, queue->cw_min);
 rt2x00usb_register_write(rt2x00dev, CWMIN_CSR, reg);

 reg = rt2x00usb_register_read(rt2x00dev, CWMAX_CSR);
 rt2x00_set_field32(&reg, field, queue->cw_max);
 rt2x00usb_register_write(rt2x00dev, CWMAX_CSR, reg);

 return 0;
}
