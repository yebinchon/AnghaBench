
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_message {int dummy; } ;
struct spi_master {int dummy; } ;
struct TYPE_2__ {scalar_t__ rem_bytes; } ;
struct qcom_qspi {int lock; TYPE_1__ xfer; scalar_t__ base; } ;


 scalar_t__ MSTR_INT_EN ;
 struct qcom_qspi* spi_master_get_devdata (struct spi_master*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void qcom_qspi_handle_err(struct spi_master *master,
     struct spi_message *msg)
{
 struct qcom_qspi *ctrl = spi_master_get_devdata(master);
 unsigned long flags;

 spin_lock_irqsave(&ctrl->lock, flags);
 writel(0, ctrl->base + MSTR_INT_EN);
 ctrl->xfer.rem_bytes = 0;
 spin_unlock_irqrestore(&ctrl->lock, flags);
}
