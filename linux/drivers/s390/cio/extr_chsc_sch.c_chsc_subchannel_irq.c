
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sch_no; int ssid; } ;
struct subchannel {int dev; TYPE_1__ schid; } ;
struct irb {int dummy; } ;
struct chsc_request {int completion; int irb; } ;
struct chsc_private {struct chsc_request* request; } ;


 int CHSC_LOG (int,char*) ;
 int CHSC_LOG_HEX (int,struct irb*,int) ;
 int CHSC_MSG (int ,char*,int ,int ) ;
 int IRQIO_CSC ;
 int cio_irb ;
 int cio_update_schib (struct subchannel*) ;
 int complete (int *) ;
 struct chsc_private* dev_get_drvdata (int *) ;
 int inc_irq_stat (int ) ;
 int memcpy (int *,struct irb*,int) ;
 int put_device (int *) ;
 struct irb* this_cpu_ptr (int *) ;

__attribute__((used)) static void chsc_subchannel_irq(struct subchannel *sch)
{
 struct chsc_private *private = dev_get_drvdata(&sch->dev);
 struct chsc_request *request = private->request;
 struct irb *irb = this_cpu_ptr(&cio_irb);

 CHSC_LOG(4, "irb");
 CHSC_LOG_HEX(4, irb, sizeof(*irb));
 inc_irq_stat(IRQIO_CSC);


 if (!request) {
  CHSC_MSG(0, "Interrupt on sch 0.%x.%04x with no request\n",
    sch->schid.ssid, sch->schid.sch_no);
  return;
 }
 private->request = ((void*)0);
 memcpy(&request->irb, irb, sizeof(*irb));
 cio_update_schib(sch);
 complete(&request->completion);
 put_device(&sch->dev);
}
