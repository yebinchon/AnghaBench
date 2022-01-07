
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct gdma_dma_dev {TYPE_1__ ddev; } ;


 int GDMA_REG_ACKSTS ;
 int GDMA_REG_CTRL0 (int) ;
 int GDMA_REG_CTRL1 (int) ;
 int GDMA_REG_DONE_INT ;
 int GDMA_REG_DST_ADDR (int) ;
 int GDMA_REG_FINSTS ;
 int GDMA_REG_REQSTS ;
 int GDMA_REG_SRC_ADDR (int) ;
 int GDMA_REG_UNMASK_INT ;
 int dev_dbg (int ,char*,int,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int gdma_dma_read (struct gdma_dma_dev*,int ) ;

__attribute__((used)) static void rt3883_dump_reg(struct gdma_dma_dev *dma_dev, int id)
{
 dev_dbg(dma_dev->ddev.dev, "chan %d, src %08x, dst %08x, ctr0 %08x, ctr1 %08x, unmask %08x, done %08x, req %08x, ack %08x, fin %08x\n",
  id,
  gdma_dma_read(dma_dev, GDMA_REG_SRC_ADDR(id)),
  gdma_dma_read(dma_dev, GDMA_REG_DST_ADDR(id)),
  gdma_dma_read(dma_dev, GDMA_REG_CTRL0(id)),
  gdma_dma_read(dma_dev, GDMA_REG_CTRL1(id)),
  gdma_dma_read(dma_dev, GDMA_REG_UNMASK_INT),
  gdma_dma_read(dma_dev, GDMA_REG_DONE_INT),
  gdma_dma_read(dma_dev, GDMA_REG_REQSTS),
  gdma_dma_read(dma_dev, GDMA_REG_ACKSTS),
  gdma_dma_read(dma_dev, GDMA_REG_FINSTS));
}
