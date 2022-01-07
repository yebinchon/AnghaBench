
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ks_wlan_private {int dummy; } ;


 int get_byte (struct ks_wlan_private*) ;

__attribute__((used)) static inline u16 get_word(struct ks_wlan_private *priv)
{
 u16 data;

 data = (get_byte(priv) & 0xff);
 data |= ((get_byte(priv) << 8) & 0xff00);
 return data;
}
