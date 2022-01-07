
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 int DPR_CMD_CONFIG ;
 scalar_t__ DPR_PARAMS (int ) ;
 scalar_t__ DPR_SUBSYS ;
 int DPR_SUBSYS_DOUT ;
 int dt3k_send_cmd (struct comedi_device*,int ) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void dt3k_dio_config(struct comedi_device *dev, int bits)
{

 writew(DPR_SUBSYS_DOUT, dev->mmio + DPR_SUBSYS);

 writew(bits, dev->mmio + DPR_PARAMS(0));



 dt3k_send_cmd(dev, DPR_CMD_CONFIG);
}
