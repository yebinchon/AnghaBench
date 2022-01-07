
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_4__ {int * data; int phys; scalar_t__ orig_len; } ;
struct esas2r_adapter {TYPE_2__ firmware; TYPE_1__* pcid; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {int dev; } ;


 int GFP_KERNEL ;
 scalar_t__ dma_alloc_coherent (int *,size_t,int *,int ) ;
 int esas2r_debug (char*) ;
 int free_fw_buffers (struct esas2r_adapter*) ;

__attribute__((used)) static int allocate_fw_buffers(struct esas2r_adapter *a, u32 length)
{
 free_fw_buffers(a);

 a->firmware.orig_len = length;

 a->firmware.data = (u8 *)dma_alloc_coherent(&a->pcid->dev,
          (size_t)length,
          (dma_addr_t *)&a->firmware.
          phys,
          GFP_KERNEL);

 if (!a->firmware.data) {
  esas2r_debug("buffer alloc failed!");
  return 0;
 }

 return 1;
}
