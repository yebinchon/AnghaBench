
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qspi_xfer {int buswidth; scalar_t__ is_last; int dir; } ;
struct qcom_qspi {scalar_t__ base; struct qspi_xfer xfer; } ;


 int MULTI_IO_MODE_MSK ;
 scalar_t__ PIO_XFER_CFG ;
 int TRANSFER_DIRECTION ;
 int TRANSFER_FRAGMENT ;
 int qspi_buswidth_to_iomode (struct qcom_qspi*,int ) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void qcom_qspi_pio_xfer_cfg(struct qcom_qspi *ctrl)
{
 u32 pio_xfer_cfg;
 const struct qspi_xfer *xfer;

 xfer = &ctrl->xfer;
 pio_xfer_cfg = readl(ctrl->base + PIO_XFER_CFG);
 pio_xfer_cfg &= ~TRANSFER_DIRECTION;
 pio_xfer_cfg |= xfer->dir;
 if (xfer->is_last)
  pio_xfer_cfg &= ~TRANSFER_FRAGMENT;
 else
  pio_xfer_cfg |= TRANSFER_FRAGMENT;
 pio_xfer_cfg &= ~MULTI_IO_MODE_MSK;
 pio_xfer_cfg |= qspi_buswidth_to_iomode(ctrl, xfer->buswidth);

 writel(pio_xfer_cfg, ctrl->base + PIO_XFER_CFG);
}
