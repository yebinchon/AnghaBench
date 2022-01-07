
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FAS216_Info ;


 int REG_CFIS ;
 int REG_CMD ;
 int REG_CNTL1 ;
 int REG_CNTL2 ;
 int REG_CNTL3 ;
 int REG_CTCH ;
 int REG_CTCL ;
 int REG_CTCM ;
 int REG_INST ;
 int REG_IS ;
 int REG_STAT ;
 unsigned char fas216_readb (int *,int ) ;
 int printk (char*,unsigned char,unsigned char,unsigned char,unsigned char,...) ;

__attribute__((used)) static void fas216_dumpstate(FAS216_Info *info)
{
 unsigned char is, stat, inst;

 is = fas216_readb(info, REG_IS);
 stat = fas216_readb(info, REG_STAT);
 inst = fas216_readb(info, REG_INST);

 printk("FAS216: CTCL=%02X CTCM=%02X CMD=%02X STAT=%02X"
        " INST=%02X IS=%02X CFIS=%02X",
  fas216_readb(info, REG_CTCL),
  fas216_readb(info, REG_CTCM),
  fas216_readb(info, REG_CMD), stat, inst, is,
  fas216_readb(info, REG_CFIS));
 printk(" CNTL1=%02X CNTL2=%02X CNTL3=%02X CTCH=%02X\n",
  fas216_readb(info, REG_CNTL1),
  fas216_readb(info, REG_CNTL2),
  fas216_readb(info, REG_CNTL3),
  fas216_readb(info, REG_CTCH));
}
