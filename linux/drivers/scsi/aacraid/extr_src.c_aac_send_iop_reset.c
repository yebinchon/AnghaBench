
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aac_dev {int dummy; } ;
struct TYPE_2__ {int IDR; } ;


 int IOP_SRC_RESET_MASK ;
 TYPE_1__ MUnit ;
 int aac_clear_omr (struct aac_dev*) ;
 int aac_dump_fw_fib_iop_reset (struct aac_dev*) ;
 int aac_notify_fw_of_iop_reset (struct aac_dev*) ;
 int aac_set_intx_mode (struct aac_dev*) ;
 int msleep (int) ;
 int src_writel (struct aac_dev*,int ,int ) ;

__attribute__((used)) static void aac_send_iop_reset(struct aac_dev *dev)
{
 aac_dump_fw_fib_iop_reset(dev);

 aac_notify_fw_of_iop_reset(dev);

 aac_set_intx_mode(dev);

 aac_clear_omr(dev);

 src_writel(dev, MUnit.IDR, IOP_SRC_RESET_MASK);

 msleep(5000);
}
