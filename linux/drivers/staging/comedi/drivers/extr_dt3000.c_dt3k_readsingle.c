
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 int DPR_CMD_READSINGLE ;
 scalar_t__ DPR_PARAMS (int) ;
 scalar_t__ DPR_SUBSYS ;
 int dt3k_send_cmd (struct comedi_device*,int ) ;
 unsigned int readw (scalar_t__) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static unsigned int dt3k_readsingle(struct comedi_device *dev,
        unsigned int subsys, unsigned int chan,
        unsigned int gain)
{
 writew(subsys, dev->mmio + DPR_SUBSYS);

 writew(chan, dev->mmio + DPR_PARAMS(0));
 writew(gain, dev->mmio + DPR_PARAMS(1));

 dt3k_send_cmd(dev, DPR_CMD_READSINGLE);

 return readw(dev->mmio + DPR_PARAMS(2));
}
