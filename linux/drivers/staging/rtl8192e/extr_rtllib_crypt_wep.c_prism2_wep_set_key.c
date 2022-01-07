
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct prism2_wep_data {int key_len; int key; } ;


 int WEP_KEY_LEN ;
 int memcpy (int ,void*,int) ;

__attribute__((used)) static int prism2_wep_set_key(void *key, int len, u8 *seq, void *priv)
{
 struct prism2_wep_data *wep = priv;

 if (len < 0 || len > WEP_KEY_LEN)
  return -1;

 memcpy(wep->key, key, len);
 wep->key_len = len;

 return 0;
}
