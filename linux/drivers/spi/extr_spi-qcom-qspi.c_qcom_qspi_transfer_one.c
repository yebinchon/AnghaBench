
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spi_transfer {long speed_hz; int len; int transfer_list; int tx_buf; int tx_nbits; scalar_t__ rx_buf; int rx_nbits; } ;
struct spi_master {TYPE_2__* cur_msg; } ;
struct spi_device {unsigned long max_speed_hz; } ;
struct TYPE_6__ {int rem_bytes; int is_last; int tx_buf; int buswidth; int dir; scalar_t__ rx_buf; } ;
struct qcom_qspi {int lock; TYPE_3__ xfer; int dev; TYPE_1__* clks; } ;
struct TYPE_5__ {int transfers; } ;
struct TYPE_4__ {int clk; } ;


 size_t QSPI_CLK_CORE ;
 int QSPI_READ ;
 int QSPI_WRITE ;
 int clk_set_rate (int ,unsigned long) ;
 int dev_err (int ,char*,int) ;
 int list_is_last (int *,int *) ;
 int qcom_qspi_pio_xfer (struct qcom_qspi*) ;
 struct qcom_qspi* spi_master_get_devdata (struct spi_master*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int qcom_qspi_transfer_one(struct spi_master *master,
      struct spi_device *slv,
      struct spi_transfer *xfer)
{
 struct qcom_qspi *ctrl = spi_master_get_devdata(master);
 int ret;
 unsigned long speed_hz;
 unsigned long flags;

 speed_hz = slv->max_speed_hz;
 if (xfer->speed_hz)
  speed_hz = xfer->speed_hz;


 ret = clk_set_rate(ctrl->clks[QSPI_CLK_CORE].clk, speed_hz * 4);
 if (ret) {
  dev_err(ctrl->dev, "Failed to set core clk %d\n", ret);
  return ret;
 }

 spin_lock_irqsave(&ctrl->lock, flags);


 if (xfer->rx_buf) {
  ctrl->xfer.dir = QSPI_READ;
  ctrl->xfer.buswidth = xfer->rx_nbits;
  ctrl->xfer.rx_buf = xfer->rx_buf;
 } else {
  ctrl->xfer.dir = QSPI_WRITE;
  ctrl->xfer.buswidth = xfer->tx_nbits;
  ctrl->xfer.tx_buf = xfer->tx_buf;
 }
 ctrl->xfer.is_last = list_is_last(&xfer->transfer_list,
       &master->cur_msg->transfers);
 ctrl->xfer.rem_bytes = xfer->len;
 qcom_qspi_pio_xfer(ctrl);

 spin_unlock_irqrestore(&ctrl->lock, flags);


 return 1;
}
