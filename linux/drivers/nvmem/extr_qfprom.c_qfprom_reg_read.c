
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qfprom_priv {scalar_t__ base; } ;


 int readb (scalar_t__) ;

__attribute__((used)) static int qfprom_reg_read(void *context,
   unsigned int reg, void *_val, size_t bytes)
{
 struct qfprom_priv *priv = context;
 u8 *val = _val;
 int i = 0, words = bytes;

 while (words--)
  *val++ = readb(priv->base + reg + i++);

 return 0;
}
