
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ mmio; } ;


 int DPR_CMD_STOP ;
 scalar_t__ DPR_INT_MASK ;
 scalar_t__ DPR_SUBSYS ;
 int DPR_SUBSYS_AI ;
 int dt3k_send_cmd (struct comedi_device*,int ) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static int dt3k_ai_cancel(struct comedi_device *dev,
     struct comedi_subdevice *s)
{
 writew(DPR_SUBSYS_AI, dev->mmio + DPR_SUBSYS);
 dt3k_send_cmd(dev, DPR_CMD_STOP);

 writew(0, dev->mmio + DPR_INT_MASK);

 return 0;
}
