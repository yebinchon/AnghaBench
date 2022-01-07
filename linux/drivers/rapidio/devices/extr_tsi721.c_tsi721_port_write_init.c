
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tsi721_device {scalar_t__ regs; TYPE_1__* pdev; int pw_fifo; int pw_fifo_lock; int pw_work; scalar_t__ pw_discard_count; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ TSI721_RIO_PW_CTL ;
 int TSI721_RIO_PW_CTL_PWC_REL ;
 int TSI721_RIO_PW_MSG_SIZE ;
 int iowrite32 (int ,scalar_t__) ;
 scalar_t__ kfifo_alloc (int *,int,int ) ;
 int spin_lock_init (int *) ;
 int tsi721_pw_dpc ;
 int tsi_err (int *,char*) ;

__attribute__((used)) static int tsi721_port_write_init(struct tsi721_device *priv)
{
 priv->pw_discard_count = 0;
 INIT_WORK(&priv->pw_work, tsi721_pw_dpc);
 spin_lock_init(&priv->pw_fifo_lock);
 if (kfifo_alloc(&priv->pw_fifo,
   TSI721_RIO_PW_MSG_SIZE * 32, GFP_KERNEL)) {
  tsi_err(&priv->pdev->dev, "PW FIFO allocation failed");
  return -ENOMEM;
 }


 iowrite32(TSI721_RIO_PW_CTL_PWC_REL, priv->regs + TSI721_RIO_PW_CTL);
 return 0;
}
