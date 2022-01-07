
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwbus_priv {int func; } ;


 int sdio_memcpy_fromio (int ,void*,unsigned int,int) ;

__attribute__((used)) static int cw1200_sdio_memcpy_fromio(struct hwbus_priv *self,
         unsigned int addr,
         void *dst, int count)
{
 return sdio_memcpy_fromio(self->func, dst, addr, count);
}
