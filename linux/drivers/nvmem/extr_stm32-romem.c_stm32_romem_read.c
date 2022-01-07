
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stm32_romem_priv {scalar_t__ base; } ;


 int readb_relaxed (scalar_t__) ;

__attribute__((used)) static int stm32_romem_read(void *context, unsigned int offset, void *buf,
       size_t bytes)
{
 struct stm32_romem_priv *priv = context;
 u8 *buf8 = buf;
 int i;

 for (i = offset; i < offset + bytes; i++)
  *buf8++ = readb_relaxed(priv->base + i);

 return 0;
}
