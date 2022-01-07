
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * flash_data; int flash_busaddr; int flash_len; TYPE_1__* pcidev; } ;
typedef TYPE_2__ ips_ha_t ;
struct TYPE_4__ {int dev; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;
 int * ips_FlashData ;
 int ips_FlashDataInUse ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
ips_free_flash_copperhead(ips_ha_t * ha)
{
 if (ha->flash_data == ips_FlashData)
  test_and_clear_bit(0, &ips_FlashDataInUse);
 else if (ha->flash_data)
  dma_free_coherent(&ha->pcidev->dev, ha->flash_len,
      ha->flash_data, ha->flash_busaddr);
 ha->flash_data = ((void*)0);
}
