
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm6242_priv {int * regs; } ;


 int __raw_readl (int *) ;

__attribute__((used)) static inline unsigned int msm6242_read(struct msm6242_priv *priv,
           unsigned int reg)
{
 return __raw_readl(&priv->regs[reg]) & 0xf;
}
