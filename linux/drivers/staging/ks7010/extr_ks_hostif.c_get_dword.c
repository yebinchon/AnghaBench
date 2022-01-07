
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ks_wlan_private {int dummy; } ;


 int get_byte (struct ks_wlan_private*) ;

__attribute__((used)) static inline u32 get_dword(struct ks_wlan_private *priv)
{
 u32 data;

 data = (get_byte(priv) & 0xff);
 data |= ((get_byte(priv) << 8) & 0x0000ff00);
 data |= ((get_byte(priv) << 16) & 0x00ff0000);
 data |= ((get_byte(priv) << 24) & 0xff000000);
 return data;
}
