
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tsi721_device {scalar_t__ regs; } ;
struct rio_mport_attr {int link_speed; int link_width; int flags; scalar_t__ dma_align; int dma_max_size; scalar_t__ dma_max_sge; } ;
struct rio_mport {struct tsi721_device* priv; } ;


 int RIO_LINK_DOWN ;
 int RIO_MPORT_DMA ;
 int RIO_MPORT_DMA_SG ;
 scalar_t__ RIO_PORT_N_CTL2_CSR (int ,int ) ;
 int RIO_PORT_N_CTL2_SEL_BAUD ;
 scalar_t__ RIO_PORT_N_CTL_CSR (int ,int ) ;
 int RIO_PORT_N_CTL_IPW ;
 scalar_t__ RIO_PORT_N_ERR_STS_CSR (int ,int ) ;
 int RIO_PORT_N_ERR_STS_PORT_OK ;
 int TSI721_BDMA_MAX_BCOUNT ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static int tsi721_query_mport(struct rio_mport *mport,
         struct rio_mport_attr *attr)
{
 struct tsi721_device *priv = mport->priv;
 u32 rval;

 rval = ioread32(priv->regs + 0x100 + RIO_PORT_N_ERR_STS_CSR(0, 0));
 if (rval & RIO_PORT_N_ERR_STS_PORT_OK) {
  rval = ioread32(priv->regs + 0x100 + RIO_PORT_N_CTL2_CSR(0, 0));
  attr->link_speed = (rval & RIO_PORT_N_CTL2_SEL_BAUD) >> 28;
  rval = ioread32(priv->regs + 0x100 + RIO_PORT_N_CTL_CSR(0, 0));
  attr->link_width = (rval & RIO_PORT_N_CTL_IPW) >> 27;
 } else
  attr->link_speed = RIO_LINK_DOWN;







 attr->flags = 0;

 return 0;
}
