
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rem_bytes; } ;
struct qcom_qspi {scalar_t__ base; TYPE_1__ xfer; } ;


 scalar_t__ PIO_XFER_CTRL ;
 int REQUEST_COUNT_MSK ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void qcom_qspi_pio_xfer_ctrl(struct qcom_qspi *ctrl)
{
 u32 pio_xfer_ctrl;

 pio_xfer_ctrl = readl(ctrl->base + PIO_XFER_CTRL);
 pio_xfer_ctrl &= ~REQUEST_COUNT_MSK;
 pio_xfer_ctrl |= ctrl->xfer.rem_bytes;
 writel(pio_xfer_ctrl, ctrl->base + PIO_XFER_CTRL);
}
