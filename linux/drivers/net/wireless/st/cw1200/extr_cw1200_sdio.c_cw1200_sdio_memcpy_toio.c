
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwbus_priv {int func; } ;


 int sdio_memcpy_toio (int ,unsigned int,void*,int) ;

__attribute__((used)) static int cw1200_sdio_memcpy_toio(struct hwbus_priv *self,
       unsigned int addr,
       const void *src, int count)
{
 return sdio_memcpy_toio(self->func, addr, (void *)src, count);
}
