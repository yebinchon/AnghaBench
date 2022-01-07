
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_insn {int n; unsigned int subdev; int chanspec; int insn; } ;
struct comedi_device {int dummy; } ;
typedef int insn ;


 int CR_PACK (unsigned int,int ,int ) ;
 int INSN_CONFIG ;
 unsigned int INSN_CONFIG_DIO_QUERY ;
 int comedi_do_insn (struct comedi_device*,struct comedi_insn*,unsigned int*) ;
 int memset (struct comedi_insn*,int ,int) ;

int comedi_dio_get_config(struct comedi_device *dev, unsigned int subdev,
     unsigned int chan, unsigned int *io)
{
 struct comedi_insn insn;
 unsigned int data[2];
 int ret;

 memset(&insn, 0, sizeof(insn));
 insn.insn = INSN_CONFIG;
 insn.n = 2;
 insn.subdev = subdev;
 insn.chanspec = CR_PACK(chan, 0, 0);
 data[0] = INSN_CONFIG_DIO_QUERY;
 data[1] = 0;
 ret = comedi_do_insn(dev, &insn, data);
 if (ret >= 0)
  *io = data[1];
 return ret;
}
