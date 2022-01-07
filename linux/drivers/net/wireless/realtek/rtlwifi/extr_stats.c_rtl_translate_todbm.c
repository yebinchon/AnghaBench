
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hw {int dummy; } ;



__attribute__((used)) static long rtl_translate_todbm(struct ieee80211_hw *hw,
    u8 signal_strength_index)
{
 long signal_power;

 signal_power = (long)((signal_strength_index + 1) >> 1);
 signal_power -= 95;
 return signal_power;
}
