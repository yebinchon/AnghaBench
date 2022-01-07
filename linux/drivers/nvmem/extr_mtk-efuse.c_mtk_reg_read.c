
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_efuse_priv {scalar_t__ base; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static int mtk_reg_read(void *context,
   unsigned int reg, void *_val, size_t bytes)
{
 struct mtk_efuse_priv *priv = context;
 u32 *val = _val;
 int i = 0, words = bytes / 4;

 while (words--)
  *val++ = readl(priv->base + reg + (i++ * 4));

 return 0;
}
