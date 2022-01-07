
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct pvscsi_ctx {TYPE_1__* sgl; } ;
struct PVSCSISGElement {scalar_t__ flags; int length; int addr; } ;
struct TYPE_2__ {struct PVSCSISGElement* sge; } ;


 int BUG_ON (int) ;
 unsigned int PVSCSI_MAX_NUM_SG_ENTRIES_PER_SEGMENT ;
 int sg_dma_address (struct scatterlist*) ;
 int sg_dma_len (struct scatterlist*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static void pvscsi_create_sg(struct pvscsi_ctx *ctx,
        struct scatterlist *sg, unsigned count)
{
 unsigned i;
 struct PVSCSISGElement *sge;

 BUG_ON(count > PVSCSI_MAX_NUM_SG_ENTRIES_PER_SEGMENT);

 sge = &ctx->sgl->sge[0];
 for (i = 0; i < count; i++, sg = sg_next(sg)) {
  sge[i].addr = sg_dma_address(sg);
  sge[i].length = sg_dma_len(sg);
  sge[i].flags = 0;
 }
}
