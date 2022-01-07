
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 int DPR_CMD_WRITESINGLE ;
 scalar_t__ DPR_PARAMS (int) ;
 scalar_t__ DPR_SUBSYS ;
 int dt3k_send_cmd (struct comedi_device*,int ) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static void dt3k_writesingle(struct comedi_device *dev, unsigned int subsys,
        unsigned int chan, unsigned int data)
{
 writew(subsys, dev->mmio + DPR_SUBSYS);

 writew(chan, dev->mmio + DPR_PARAMS(0));
 writew(0, dev->mmio + DPR_PARAMS(1));
 writew(data, dev->mmio + DPR_PARAMS(2));

 dt3k_send_cmd(dev, DPR_CMD_WRITESINGLE);
}
