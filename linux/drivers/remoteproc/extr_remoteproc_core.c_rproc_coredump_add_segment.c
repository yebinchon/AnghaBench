
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc_dump_segment {size_t size; int node; int da; } ;
struct rproc {int dump_segments; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct rproc_dump_segment* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

int rproc_coredump_add_segment(struct rproc *rproc, dma_addr_t da, size_t size)
{
 struct rproc_dump_segment *segment;

 segment = kzalloc(sizeof(*segment), GFP_KERNEL);
 if (!segment)
  return -ENOMEM;

 segment->da = da;
 segment->size = size;

 list_add_tail(&segment->node, &rproc->dump_segments);

 return 0;
}
