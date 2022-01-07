
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rwdt_priv {scalar_t__ base; } ;


 unsigned int RWTCNT ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void rwdt_write(struct rwdt_priv *priv, u32 val, unsigned int reg)
{
 if (reg == RWTCNT)
  val |= 0x5a5a0000;
 else
  val |= 0xa5a5a500;

 writel_relaxed(val, priv->base + reg);
}
