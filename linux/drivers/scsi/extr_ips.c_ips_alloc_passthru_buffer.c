
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* ioctl_data; int ioctl_len; int ioctl_busaddr; TYPE_1__* pcidev; } ;
typedef TYPE_2__ ips_ha_t ;
typedef int dma_addr_t ;
struct TYPE_4__ {int dev; } ;


 int GFP_KERNEL ;
 void* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,char*,int ) ;

__attribute__((used)) static int
ips_alloc_passthru_buffer(ips_ha_t * ha, int length)
{
 void *bigger_buf;
 dma_addr_t dma_busaddr;

 if (ha->ioctl_data && length <= ha->ioctl_len)
  return 0;

 bigger_buf = dma_alloc_coherent(&ha->pcidev->dev, length, &dma_busaddr,
   GFP_KERNEL);
 if (bigger_buf) {

  dma_free_coherent(&ha->pcidev->dev, ha->ioctl_len,
      ha->ioctl_data, ha->ioctl_busaddr);

  ha->ioctl_data = (char *) bigger_buf;
  ha->ioctl_len = length;
  ha->ioctl_busaddr = dma_busaddr;
 } else {
  return -1;
 }
 return 0;
}
