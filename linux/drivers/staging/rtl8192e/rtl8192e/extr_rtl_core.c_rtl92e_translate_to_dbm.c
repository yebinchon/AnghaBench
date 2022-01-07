
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r8192_priv {int dummy; } ;



long rtl92e_translate_to_dbm(struct r8192_priv *priv, u8 signal_strength_index)
{
 long signal_power;

 signal_power = (long)((signal_strength_index + 1) >> 1);
 signal_power -= 95;

 return signal_power;
}
