
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tsi721_dma_desc {int bcount; int type_id; } ;


 int EINVAL ;
 int TSI721_DMAD_BCOUNT1 ;
 int TSI721_DMAD_IOF ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static int
tsi721_desc_fill_end(struct tsi721_dma_desc *bd_ptr, u32 bcount, bool interrupt)
{
 if (!bd_ptr)
  return -EINVAL;


 if (interrupt)
  bd_ptr->type_id |= cpu_to_le32(TSI721_DMAD_IOF);
 bd_ptr->bcount |= cpu_to_le32(bcount & TSI721_DMAD_BCOUNT1);

 return 0;
}
