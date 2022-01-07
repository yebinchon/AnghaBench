
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ltq_wdt_priv {scalar_t__ membase; } ;


 int __raw_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void ltq_wdt_w32(struct ltq_wdt_priv *priv, u32 val, u32 offset)
{
 __raw_writel(val, priv->membase + offset);
}
