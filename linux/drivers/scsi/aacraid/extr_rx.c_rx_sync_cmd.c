
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct aac_dev {int OIMR; TYPE_1__* IndexRegs; } ;
struct TYPE_4__ {int OIMR; } ;
struct TYPE_3__ {int * Mailbox; } ;


 int ETIMEDOUT ;
 int HZ ;
 int INBOUNDDOORBELL_0 ;
 int InboundDoorbellReg ;
 TYPE_2__ MUnit ;
 int OUTBOUNDDOORBELL_0 ;
 int OutboundDoorbellReg ;
 int aac_adapter_enable_int (struct aac_dev*) ;
 unsigned long jiffies ;
 int msleep (int) ;
 int readl (int *) ;
 int rx_readb (struct aac_dev*,int ) ;
 int rx_readl (struct aac_dev*,int ) ;
 int rx_writeb (struct aac_dev*,int ,int) ;
 int rx_writel (struct aac_dev*,int ,int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int udelay (int) ;
 scalar_t__ unlikely (int) ;
 int writel (int ,int *) ;

__attribute__((used)) static int rx_sync_cmd(struct aac_dev *dev, u32 command,
 u32 p1, u32 p2, u32 p3, u32 p4, u32 p5, u32 p6,
 u32 *status, u32 * r1, u32 * r2, u32 * r3, u32 * r4)
{
 unsigned long start;
 int ok;



 writel(command, &dev->IndexRegs->Mailbox[0]);



 writel(p1, &dev->IndexRegs->Mailbox[1]);
 writel(p2, &dev->IndexRegs->Mailbox[2]);
 writel(p3, &dev->IndexRegs->Mailbox[3]);
 writel(p4, &dev->IndexRegs->Mailbox[4]);



 rx_writel(dev, OutboundDoorbellReg, OUTBOUNDDOORBELL_0);



 rx_writeb(dev, MUnit.OIMR, dev->OIMR = 0xff);




 rx_readb (dev, MUnit.OIMR);



 rx_writel(dev, InboundDoorbellReg, INBOUNDDOORBELL_0);

 ok = 0;
 start = jiffies;




 while (time_before(jiffies, start+30*HZ))
 {
  udelay(5);



  if (rx_readl(dev, OutboundDoorbellReg) & OUTBOUNDDOORBELL_0) {



   rx_writel(dev, OutboundDoorbellReg, OUTBOUNDDOORBELL_0);
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



 rx_writel(dev, OutboundDoorbellReg, OUTBOUNDDOORBELL_0);



 aac_adapter_enable_int(dev);
 return 0;

}
