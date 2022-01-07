
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct aac_dev {int OIMR; int max_msix; scalar_t__ msi_enabled; TYPE_1__* IndexRegs; int in_soft_reset; int sync_mode; } ;
struct TYPE_4__ {int ODR_C; int IDR; int OIMR; } ;
struct TYPE_3__ {int * Mailbox; } ;


 int AAC_CLEAR_SYNC_BIT ;
 int ETIMEDOUT ;
 scalar_t__ GET_COMM_PREFERRED_SETTINGS ;
 int HZ ;
 int INBOUNDDOORBELL_0 ;
 scalar_t__ IOP_RESET_ALWAYS ;
 TYPE_2__ MUnit ;
 int OUTBOUNDDOORBELL_0 ;
 scalar_t__ SEND_SYNCHRONOUS_FIB ;
 int SRC_IDR_SHIFT ;
 int SRC_ODR_SHIFT ;
 int aac_adapter_enable_int (struct aac_dev*) ;
 int aac_src_access_devreg (struct aac_dev*,int ) ;
 int aac_src_get_sync_status (struct aac_dev*) ;
 unsigned long jiffies ;
 int msleep (int) ;
 int readl (int *) ;
 int src_readl (struct aac_dev*,int ) ;
 int src_writel (struct aac_dev*,int ,int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int udelay (int) ;
 scalar_t__ unlikely (int) ;
 int writel (scalar_t__,int *) ;

__attribute__((used)) static int src_sync_cmd(struct aac_dev *dev, u32 command,
 u32 p1, u32 p2, u32 p3, u32 p4, u32 p5, u32 p6,
 u32 *status, u32 * r1, u32 * r2, u32 * r3, u32 * r4)
{
 unsigned long start;
 unsigned long delay;
 int ok;




 writel(command, &dev->IndexRegs->Mailbox[0]);



 writel(p1, &dev->IndexRegs->Mailbox[1]);
 writel(p2, &dev->IndexRegs->Mailbox[2]);
 writel(p3, &dev->IndexRegs->Mailbox[3]);
 writel(p4, &dev->IndexRegs->Mailbox[4]);




 if (!dev->msi_enabled)
  src_writel(dev,
      MUnit.ODR_C,
      OUTBOUNDDOORBELL_0 << SRC_ODR_SHIFT);




 src_writel(dev, MUnit.OIMR, dev->OIMR = 0xffffffff);





 src_readl(dev, MUnit.OIMR);




 src_writel(dev, MUnit.IDR, INBOUNDDOORBELL_0 << SRC_IDR_SHIFT);

 if ((!dev->sync_mode || command != SEND_SYNCHRONOUS_FIB) &&
  !dev->in_soft_reset) {
  ok = 0;
  start = jiffies;

  if (command == IOP_RESET_ALWAYS) {

   delay = 10*HZ;
  } else {

   delay = 300*HZ;
  }
  while (time_before(jiffies, start+delay)) {
   udelay(5);



   if (aac_src_get_sync_status(dev) & OUTBOUNDDOORBELL_0) {



    if (dev->msi_enabled)
     aac_src_access_devreg(dev,
      AAC_CLEAR_SYNC_BIT);
    else
     src_writel(dev,
      MUnit.ODR_C,
      OUTBOUNDDOORBELL_0 << SRC_ODR_SHIFT);
    ok = 1;
    break;
   }



   msleep(1);
  }
  if (unlikely(ok != 1)) {



   aac_adapter_enable_int(dev);
   return -ETIMEDOUT;
  }



  if (status)
   *status = readl(&dev->IndexRegs->Mailbox[0]);
  if (r1)
   *r1 = readl(&dev->IndexRegs->Mailbox[1]);
  if (r2)
   *r2 = readl(&dev->IndexRegs->Mailbox[2]);
  if (r3)
   *r3 = readl(&dev->IndexRegs->Mailbox[3]);
  if (r4)
   *r4 = readl(&dev->IndexRegs->Mailbox[4]);
  if (command == GET_COMM_PREFERRED_SETTINGS)
   dev->max_msix =
    readl(&dev->IndexRegs->Mailbox[5]) & 0xFFFF;



  if (!dev->msi_enabled)
   src_writel(dev,
    MUnit.ODR_C,
    OUTBOUNDDOORBELL_0 << SRC_ODR_SHIFT);
 }




 aac_adapter_enable_int(dev);
 return 0;
}
