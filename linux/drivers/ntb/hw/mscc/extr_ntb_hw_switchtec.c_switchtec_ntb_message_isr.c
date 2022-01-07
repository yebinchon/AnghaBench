
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct switchtec_ntb {TYPE_2__* mmio_self_dbmsg; TYPE_1__* stdev; } ;
typedef int irqreturn_t ;
struct TYPE_7__ {int status; } ;
struct TYPE_6__ {TYPE_3__* imsg; } ;
struct TYPE_5__ {int dev; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int IRQ_HANDLED ;
 int LINK_MESSAGE ;
 int NTB_DBMSG_IMSG_STATUS ;
 int dev_dbg (int *,char*,int,int ) ;
 int ioread64 (TYPE_3__*) ;
 int iowrite8 (int,int *) ;
 int switchtec_ntb_check_link (struct switchtec_ntb*,int) ;

__attribute__((used)) static irqreturn_t switchtec_ntb_message_isr(int irq, void *dev)
{
 int i;
 struct switchtec_ntb *sndev = dev;

 for (i = 0; i < ARRAY_SIZE(sndev->mmio_self_dbmsg->imsg); i++) {
  u64 msg = ioread64(&sndev->mmio_self_dbmsg->imsg[i]);

  if (msg & NTB_DBMSG_IMSG_STATUS) {
   dev_dbg(&sndev->stdev->dev, "message: %d %08x\n",
    i, (u32)msg);
   iowrite8(1, &sndev->mmio_self_dbmsg->imsg[i].status);

   if (i == LINK_MESSAGE)
    switchtec_ntb_check_link(sndev, msg);
  }
 }

 return IRQ_HANDLED;
}
