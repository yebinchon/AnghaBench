
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtl8xxxu_priv {int dummy; } ;


 int REG_SPEC_SIFS ;
 int SPEC_SIFS_CCK_MASK ;
 int SPEC_SIFS_CCK_SHIFT ;
 int SPEC_SIFS_OFDM_MASK ;
 int SPEC_SIFS_OFDM_SHIFT ;
 int rtl8xxxu_write16 (struct rtl8xxxu_priv*,int ,int) ;

__attribute__((used)) static void
rtl8xxxu_set_spec_sifs(struct rtl8xxxu_priv *priv, u16 cck, u16 ofdm)
{
 u16 val16;

 val16 = ((cck << SPEC_SIFS_CCK_SHIFT) & SPEC_SIFS_CCK_MASK) |
  ((ofdm << SPEC_SIFS_OFDM_SHIFT) & SPEC_SIFS_OFDM_MASK);

 rtl8xxxu_write16(priv, REG_SPEC_SIFS, val16);
}
