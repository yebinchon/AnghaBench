
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct imxdi_dev {int dsr; int write_mutex; TYPE_1__* pdev; int write_wait; scalar_t__ ioaddr; } ;
struct TYPE_2__ {int dev; } ;


 int DIER_WCIE ;
 int DSR_WCF ;
 int DSR_WEF ;
 int EIO ;
 int clear_write_error (struct imxdi_dev*) ;
 int dev_warn (int *,char*,int ,int) ;
 int di_int_enable (struct imxdi_dev*,int ) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int di_write_wait(struct imxdi_dev *imxdi, u32 val, int reg)
{
 int ret;
 int rc = 0;


 mutex_lock(&imxdi->write_mutex);


 di_int_enable(imxdi, DIER_WCIE);

 imxdi->dsr = 0;


 writel(val, imxdi->ioaddr + reg);


 ret = wait_event_interruptible_timeout(imxdi->write_wait,
   imxdi->dsr & (DSR_WCF | DSR_WEF), msecs_to_jiffies(1));
 if (ret < 0) {
  rc = ret;
  goto out;
 } else if (ret == 0) {
  dev_warn(&imxdi->pdev->dev,
    "Write-wait timeout "
    "val = 0x%08x reg = 0x%08x\n", val, reg);
 }


 if (imxdi->dsr & DSR_WEF) {
  clear_write_error(imxdi);
  rc = -EIO;
 }

out:
 mutex_unlock(&imxdi->write_mutex);

 return rc;
}
