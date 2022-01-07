
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ltq_wdt_priv {scalar_t__ membase; } ;


 scalar_t__ __raw_readl (scalar_t__) ;

__attribute__((used)) static u32 ltq_wdt_r32(struct ltq_wdt_priv *priv, u32 offset)
{
 return __raw_readl(priv->membase + offset);
}
