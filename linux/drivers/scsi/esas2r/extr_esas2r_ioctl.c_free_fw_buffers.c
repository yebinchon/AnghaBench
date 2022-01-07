
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * data; scalar_t__ phys; scalar_t__ orig_len; } ;
struct esas2r_adapter {TYPE_2__ firmware; TYPE_1__* pcid; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {int dev; } ;


 int dma_free_coherent (int *,size_t,int *,int ) ;

__attribute__((used)) static void free_fw_buffers(struct esas2r_adapter *a)
{
 if (a->firmware.data) {
  dma_free_coherent(&a->pcid->dev,
      (size_t)a->firmware.orig_len,
      a->firmware.data,
      (dma_addr_t)a->firmware.phys);

  a->firmware.data = ((void*)0);
 }
}
