
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwbus_priv {int func; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ no_nptb; } ;


 int SDIO_BLOCK_SIZE ;
 size_t round_up (size_t,int ) ;
 size_t sdio_align_size (int ,size_t) ;

__attribute__((used)) static size_t cw1200_sdio_align_size(struct hwbus_priv *self, size_t size)
{
 if (self->pdata->no_nptb)
  size = round_up(size, SDIO_BLOCK_SIZE);
 else
  size = sdio_align_size(self->func, size);

 return size;
}
