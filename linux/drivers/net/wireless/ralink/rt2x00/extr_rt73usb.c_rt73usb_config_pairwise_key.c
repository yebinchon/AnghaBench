
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00lib_crypto {scalar_t__ cmd; int bssidx; int cipher; int address; int rx_mic; int tx_mic; int key; } ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_key_conf {int hw_key_idx; int flags; } ;
struct hw_pairwise_ta_entry {int cipher; struct hw_pairwise_ta_entry* rx_mic; struct hw_pairwise_ta_entry* tx_mic; struct hw_pairwise_ta_entry* key; } ;
struct hw_key_entry {int cipher; struct hw_key_entry* rx_mic; struct hw_key_entry* tx_mic; struct hw_key_entry* key; } ;
typedef int key_entry ;
typedef int addr_entry ;


 scalar_t__ DISABLE_KEY ;
 int ENOSPC ;
 int ETH_ALEN ;
 int IEEE80211_KEY_FLAG_GENERATE_IV ;
 int PAIRWISE_KEY_ENTRY (int) ;
 int PAIRWISE_TA_ENTRY (int) ;
 int SEC_CSR2 ;
 int SEC_CSR3 ;
 int SEC_CSR4 ;
 scalar_t__ SET_KEY ;
 int ffz (int) ;
 int memcpy (struct hw_pairwise_ta_entry*,int ,int) ;
 int memset (struct hw_pairwise_ta_entry*,int ,int) ;
 int rt2x00usb_register_multiwrite (struct rt2x00_dev*,int,struct hw_pairwise_ta_entry*,int) ;
 int rt2x00usb_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00usb_register_write (struct rt2x00_dev*,int ,int) ;

__attribute__((used)) static int rt73usb_config_pairwise_key(struct rt2x00_dev *rt2x00dev,
           struct rt2x00lib_crypto *crypto,
           struct ieee80211_key_conf *key)
{
 struct hw_pairwise_ta_entry addr_entry;
 struct hw_key_entry key_entry;
 u32 mask;
 u32 reg;

 if (crypto->cmd == SET_KEY) {
  reg = rt2x00usb_register_read(rt2x00dev, SEC_CSR2);
  if (reg && reg == ~0) {
   key->hw_key_idx = 32;
   reg = rt2x00usb_register_read(rt2x00dev, SEC_CSR3);
   if (reg && reg == ~0)
    return -ENOSPC;
  }

  key->hw_key_idx += reg ? ffz(reg) : 0;




  memcpy(key_entry.key, crypto->key,
         sizeof(key_entry.key));
  memcpy(key_entry.tx_mic, crypto->tx_mic,
         sizeof(key_entry.tx_mic));
  memcpy(key_entry.rx_mic, crypto->rx_mic,
         sizeof(key_entry.rx_mic));

  reg = PAIRWISE_KEY_ENTRY(key->hw_key_idx);
  rt2x00usb_register_multiwrite(rt2x00dev, reg,
           &key_entry, sizeof(key_entry));




  memset(&addr_entry, 0, sizeof(addr_entry));
  memcpy(&addr_entry, crypto->address, ETH_ALEN);
  addr_entry.cipher = crypto->cipher;

  reg = PAIRWISE_TA_ENTRY(key->hw_key_idx);
  rt2x00usb_register_multiwrite(rt2x00dev, reg,
         &addr_entry, sizeof(addr_entry));






  reg = rt2x00usb_register_read(rt2x00dev, SEC_CSR4);
  reg |= (1 << crypto->bssidx);
  rt2x00usb_register_write(rt2x00dev, SEC_CSR4, reg);
  key->flags |= IEEE80211_KEY_FLAG_GENERATE_IV;
 }







 if (key->hw_key_idx < 32) {
  mask = 1 << key->hw_key_idx;

  reg = rt2x00usb_register_read(rt2x00dev, SEC_CSR2);
  if (crypto->cmd == SET_KEY)
   reg |= mask;
  else if (crypto->cmd == DISABLE_KEY)
   reg &= ~mask;
  rt2x00usb_register_write(rt2x00dev, SEC_CSR2, reg);
 } else {
  mask = 1 << (key->hw_key_idx - 32);

  reg = rt2x00usb_register_read(rt2x00dev, SEC_CSR3);
  if (crypto->cmd == SET_KEY)
   reg |= mask;
  else if (crypto->cmd == DISABLE_KEY)
   reg &= ~mask;
  rt2x00usb_register_write(rt2x00dev, SEC_CSR3, reg);
 }

 return 0;
}
