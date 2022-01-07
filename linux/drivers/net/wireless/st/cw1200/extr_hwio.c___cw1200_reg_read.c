
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct cw1200_common {int hwbus_priv; TYPE_1__* hwbus_ops; } ;
struct TYPE_2__ {int (* hwbus_memcpy_fromio ) (int ,int ,void*,size_t) ;} ;


 int EINVAL ;
 int SDIO_ADDR17BIT (int,int ,int ,int ) ;
 int SPI_REG_ADDR_TO_SDIO (int ) ;
 scalar_t__ WARN_ON (int) ;
 int pr_err (char*) ;
 int stub1 (int ,int ,void*,size_t) ;

__attribute__((used)) static int __cw1200_reg_read(struct cw1200_common *priv, u16 addr,
        void *buf, size_t buf_len, int buf_id)
{
 u16 addr_sdio;
 u32 sdio_reg_addr_17bit;


 if (WARN_ON(((unsigned long)buf & 3) && (buf_len > 4))) {
  pr_err("buffer is not aligned.\n");
  return -EINVAL;
 }


 addr_sdio = SPI_REG_ADDR_TO_SDIO(addr);
 sdio_reg_addr_17bit = SDIO_ADDR17BIT(buf_id, 0, 0, addr_sdio);

 return priv->hwbus_ops->hwbus_memcpy_fromio(priv->hwbus_priv,
        sdio_reg_addr_17bit,
        buf, buf_len);
}
