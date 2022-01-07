
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rp5c01_priv {int * regs; } ;


 int __raw_readl (int *) ;

__attribute__((used)) static inline unsigned int rp5c01_read(struct rp5c01_priv *priv,
           unsigned int reg)
{
 return __raw_readl(&priv->regs[reg]) & 0xf;
}
