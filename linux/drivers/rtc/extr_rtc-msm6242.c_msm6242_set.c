
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm6242_priv {int dummy; } ;


 unsigned int msm6242_read (struct msm6242_priv*,unsigned int) ;
 int msm6242_write (struct msm6242_priv*,unsigned int,unsigned int) ;

__attribute__((used)) static inline void msm6242_set(struct msm6242_priv *priv, unsigned int val,
          unsigned int reg)
{
 msm6242_write(priv, msm6242_read(priv, reg) | val, reg);
}
