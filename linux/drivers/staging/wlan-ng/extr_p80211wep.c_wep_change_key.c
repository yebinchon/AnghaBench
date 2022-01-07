
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wlandevice {int* wep_keylens; int * wep_keys; } ;


 int MAX_KEYLEN ;
 int NUM_WEPKEYS ;
 int memcpy (int ,int *,int) ;

int wep_change_key(struct wlandevice *wlandev, int keynum, u8 *key, int keylen)
{
 if (keylen < 0)
  return -1;
 if (keylen >= MAX_KEYLEN)
  return -1;
 if (!key)
  return -1;
 if (keynum < 0)
  return -1;
 if (keynum >= NUM_WEPKEYS)
  return -1;

 wlandev->wep_keylens[keynum] = keylen;
 memcpy(wlandev->wep_keys[keynum], key, keylen);

 return 0;
}
