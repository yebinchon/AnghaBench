
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtl8xxxu_priv {int dummy; } ;


 int REG_RETRY_LIMIT ;
 int RETRY_LIMIT_LONG_MASK ;
 int RETRY_LIMIT_LONG_SHIFT ;
 int RETRY_LIMIT_SHORT_MASK ;
 int RETRY_LIMIT_SHORT_SHIFT ;
 int rtl8xxxu_write16 (struct rtl8xxxu_priv*,int ,int) ;

__attribute__((used)) static void
rtl8xxxu_set_retry(struct rtl8xxxu_priv *priv, u16 short_retry, u16 long_retry)
{
 u16 val16;

 val16 = ((short_retry << RETRY_LIMIT_SHORT_SHIFT) &
   RETRY_LIMIT_SHORT_MASK) |
  ((long_retry << RETRY_LIMIT_LONG_SHIFT) &
   RETRY_LIMIT_LONG_MASK);

 rtl8xxxu_write16(priv, REG_RETRY_LIMIT, val16);
}
