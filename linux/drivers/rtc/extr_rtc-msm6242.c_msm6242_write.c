
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm6242_priv {int * regs; } ;


 int __raw_writel (unsigned int,int *) ;

__attribute__((used)) static inline void msm6242_write(struct msm6242_priv *priv, unsigned int val,
    unsigned int reg)
{
 __raw_writel(val, &priv->regs[reg]);
}
