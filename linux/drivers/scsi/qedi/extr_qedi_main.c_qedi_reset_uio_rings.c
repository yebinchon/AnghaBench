
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_uio_dev {int ll2_buf_size; int ll2_buf; int ll2_ring_size; int ll2_ring; struct qedi_uio_ctrl* uctrl; struct qedi_ctx* qedi; } ;
struct qedi_uio_ctrl {scalar_t__ host_rx_bd_cons; scalar_t__ hw_rx_bd_prod; scalar_t__ hw_rx_prod; scalar_t__ host_rx_cons; } ;
struct qedi_ctx {int ll2_lock; } ;


 int memset (int ,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void qedi_reset_uio_rings(struct qedi_uio_dev *udev)
{
 struct qedi_ctx *qedi = ((void*)0);
 struct qedi_uio_ctrl *uctrl = ((void*)0);

 qedi = udev->qedi;
 uctrl = udev->uctrl;

 spin_lock_bh(&qedi->ll2_lock);
 uctrl->host_rx_cons = 0;
 uctrl->hw_rx_prod = 0;
 uctrl->hw_rx_bd_prod = 0;
 uctrl->host_rx_bd_cons = 0;

 memset(udev->ll2_ring, 0, udev->ll2_ring_size);
 memset(udev->ll2_buf, 0, udev->ll2_buf_size);
 spin_unlock_bh(&qedi->ll2_lock);
}
