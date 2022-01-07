
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ltq_wdt_priv {int dummy; } ;


 int ltq_wdt_r32 (struct ltq_wdt_priv*,int ) ;
 int ltq_wdt_w32 (struct ltq_wdt_priv*,int ,int ) ;

__attribute__((used)) static void ltq_wdt_mask(struct ltq_wdt_priv *priv, u32 clear, u32 set,
    u32 offset)
{
 u32 val = ltq_wdt_r32(priv, offset);

 val &= ~(clear);
 val |= set;
 ltq_wdt_w32(priv, val, offset);
}
