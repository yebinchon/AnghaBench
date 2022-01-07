
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct qcom_slim_ctrl {scalar_t__ base; } ;


 int __iowrite32_copy (scalar_t__,void*,int) ;
 int mb () ;

__attribute__((used)) static void qcom_slim_queue_tx(struct qcom_slim_ctrl *ctrl, void *buf,
          u8 len, u32 tx_reg)
{
 int count = (len + 3) >> 2;

 __iowrite32_copy(ctrl->base + tx_reg, buf, count);


 mb();
}
