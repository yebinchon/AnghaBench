
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct aac_dev {TYPE_1__* IndexRegs; scalar_t__ msi_enabled; } ;
struct TYPE_4__ {int ODR_C; } ;
struct TYPE_3__ {int * Mailbox; } ;


 int AAC_CLEAR_SYNC_BIT ;
 int HZ ;
 TYPE_2__ MUnit ;
 int OUTBOUNDDOORBELL_0 ;
 int SRC_ODR_SHIFT ;
 int USEC_PER_MSEC ;
 int aac_src_access_devreg (struct aac_dev*,int ) ;
 int aac_src_get_sync_status (struct aac_dev*) ;
 unsigned long jiffies ;
 int readl (int *) ;
 int src_writel (struct aac_dev*,int ,int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int udelay (int) ;
 int usleep_range (unsigned long,unsigned long) ;

__attribute__((used)) static int aac_src_wait_sync(struct aac_dev *dev, int *status)
{
 unsigned long start = jiffies;
 unsigned long usecs = 0;
 int delay = 5 * HZ;
 int rc = 1;

 while (time_before(jiffies, start+delay)) {



  udelay(5);





  if (aac_src_get_sync_status(dev) & OUTBOUNDDOORBELL_0) {



   if (dev->msi_enabled)
    aac_src_access_devreg(dev, AAC_CLEAR_SYNC_BIT);
   else
    src_writel(dev, MUnit.ODR_C,
     OUTBOUNDDOORBELL_0 << SRC_ODR_SHIFT);
   rc = 0;

   break;
  }




  usecs = 1 * USEC_PER_MSEC;
  usleep_range(usecs, usecs + 50);
 }



 if (status && !rc) {
  status[0] = readl(&dev->IndexRegs->Mailbox[0]);
  status[1] = readl(&dev->IndexRegs->Mailbox[1]);
  status[2] = readl(&dev->IndexRegs->Mailbox[2]);
  status[3] = readl(&dev->IndexRegs->Mailbox[3]);
  status[4] = readl(&dev->IndexRegs->Mailbox[4]);
 }

 return rc;
}
