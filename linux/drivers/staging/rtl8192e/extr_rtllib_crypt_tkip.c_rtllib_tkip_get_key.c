
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct rtllib_tkip_data {scalar_t__ tx_iv16; int tx_iv32; int key; int key_set; } ;


 int TKIP_KEY_LEN ;
 int memcpy (void*,int ,int) ;

__attribute__((used)) static int rtllib_tkip_get_key(void *key, int len, u8 *seq, void *priv)
{
 struct rtllib_tkip_data *tkey = priv;

 if (len < TKIP_KEY_LEN)
  return -1;

 if (!tkey->key_set)
  return 0;
 memcpy(key, tkey->key, TKIP_KEY_LEN);

 if (seq) {

  u16 iv16 = tkey->tx_iv16;
  u32 iv32 = tkey->tx_iv32;

  if (iv16 == 0)
   iv32--;
  iv16--;
  seq[0] = tkey->tx_iv16;
  seq[1] = tkey->tx_iv16 >> 8;
  seq[2] = tkey->tx_iv32;
  seq[3] = tkey->tx_iv32 >> 8;
  seq[4] = tkey->tx_iv32 >> 16;
  seq[5] = tkey->tx_iv32 >> 24;
 }

 return TKIP_KEY_LEN;
}
