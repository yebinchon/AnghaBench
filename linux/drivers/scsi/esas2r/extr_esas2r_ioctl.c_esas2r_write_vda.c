
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct esas2r_adapter {int * vda_buffer; int ppvda_buffer; TYPE_1__* pcid; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 long VDA_MAX_BUFFER_SIZE ;
 scalar_t__ dma_alloc_coherent (int *,size_t,int *,int ) ;
 int memcpy (int *,char const*,int) ;

int esas2r_write_vda(struct esas2r_adapter *a, const char *buf, long off,
       int count)
{





 if (!a->vda_buffer) {
  dma_addr_t dma_addr;
  a->vda_buffer = (u8 *)dma_alloc_coherent(&a->pcid->dev,
        (size_t)
        VDA_MAX_BUFFER_SIZE,
        &dma_addr,
        GFP_KERNEL);

  a->ppvda_buffer = dma_addr;
 }

 if (!a->vda_buffer)
  return -ENOMEM;

 if (off > VDA_MAX_BUFFER_SIZE)
  return 0;

 if (count + off > VDA_MAX_BUFFER_SIZE)
  count = VDA_MAX_BUFFER_SIZE - off;

 if (count < 1)
  return 0;

 memcpy(a->vda_buffer + off, buf, count);

 return count;
}
