
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_insn {int n; unsigned int subdev; int chanspec; int insn; } ;
struct comedi_device {int dummy; } ;
typedef int insn ;


 int CR_PACK (unsigned int,int ,int ) ;
 int INSN_CONFIG ;
 int comedi_do_insn (struct comedi_device*,struct comedi_insn*,unsigned int*) ;
 int memset (struct comedi_insn*,int ,int) ;

int comedi_dio_config(struct comedi_device *dev, unsigned int subdev,
        unsigned int chan, unsigned int io)
{
 struct comedi_insn insn;

 memset(&insn, 0, sizeof(insn));
 insn.insn = INSN_CONFIG;
 insn.n = 1;
 insn.subdev = subdev;
 insn.chanspec = CR_PACK(chan, 0, 0);

 return comedi_do_insn(dev, &insn, &io);
}
