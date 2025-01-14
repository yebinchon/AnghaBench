
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef unsigned int u16 ;
struct TYPE_4__ {unsigned int device_id; } ;
struct tb_switch {int generation; int dma_port; TYPE_2__ config; int safe_mode; TYPE_1__* nvm; } ;
struct TYPE_3__ {unsigned int buf_data_size; int * buf; } ;


 int DMA_PORT_CSS_ADDRESS ;
 unsigned int DMA_PORT_CSS_MAX_SIZE ;
 int EINVAL ;
 int IS_ALIGNED (unsigned int,int ) ;
 int NVM_CSS ;
 unsigned int NVM_DEVID ;
 unsigned int NVM_MAX_SIZE ;
 unsigned int NVM_MIN_SIZE ;
 int SZ_4K ;
 int dma_port_flash_write (int ,int ,int const*,unsigned int) ;

__attribute__((used)) static int nvm_validate_and_write(struct tb_switch *sw)
{
 unsigned int image_size, hdr_size;
 const u8 *buf = sw->nvm->buf;
 u16 ds_size;
 int ret;

 if (!buf)
  return -EINVAL;

 image_size = sw->nvm->buf_data_size;
 if (image_size < NVM_MIN_SIZE || image_size > NVM_MAX_SIZE)
  return -EINVAL;





 hdr_size = (*(u32 *)buf) & 0xffffff;
 if (hdr_size + NVM_DEVID + 2 >= image_size)
  return -EINVAL;


 if (!IS_ALIGNED(hdr_size, SZ_4K))
  return -EINVAL;





 ds_size = *(u16 *)(buf + hdr_size);
 if (ds_size >= image_size)
  return -EINVAL;

 if (!sw->safe_mode) {
  u16 device_id;





  device_id = *(u16 *)(buf + hdr_size + NVM_DEVID);
  if (device_id != sw->config.device_id)
   return -EINVAL;

  if (sw->generation < 3) {

   ret = dma_port_flash_write(sw->dma_port,
    DMA_PORT_CSS_ADDRESS, buf + NVM_CSS,
    DMA_PORT_CSS_MAX_SIZE);
   if (ret)
    return ret;
  }


  buf += hdr_size;
  image_size -= hdr_size;
 }

 return dma_port_flash_write(sw->dma_port, 0, buf, image_size);
}
