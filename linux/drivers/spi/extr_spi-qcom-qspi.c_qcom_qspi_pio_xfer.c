
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ dir; } ;
struct qcom_qspi {scalar_t__ base; TYPE_1__ xfer; } ;


 scalar_t__ MSTR_INT_EN ;
 scalar_t__ MSTR_INT_STATUS ;
 int QSPI_ALL_IRQS ;
 int QSPI_ERR_IRQS ;
 scalar_t__ QSPI_WRITE ;
 int RESP_FIFO_RDY ;
 int WR_FIFO_EMPTY ;
 int qcom_qspi_pio_xfer_cfg (struct qcom_qspi*) ;
 int qcom_qspi_pio_xfer_ctrl (struct qcom_qspi*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void qcom_qspi_pio_xfer(struct qcom_qspi *ctrl)
{
 u32 ints;

 qcom_qspi_pio_xfer_cfg(ctrl);


 writel(QSPI_ALL_IRQS, ctrl->base + MSTR_INT_STATUS);


 if (ctrl->xfer.dir == QSPI_WRITE)
  ints = QSPI_ERR_IRQS | WR_FIFO_EMPTY;
 else
  ints = QSPI_ERR_IRQS | RESP_FIFO_RDY;
 writel(ints, ctrl->base + MSTR_INT_EN);


 qcom_qspi_pio_xfer_ctrl(ctrl);
}
