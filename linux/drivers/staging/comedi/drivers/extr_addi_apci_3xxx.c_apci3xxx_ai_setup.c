
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 unsigned int AREF_DIFF ;
 unsigned int CR_AREF (unsigned int) ;
 unsigned int CR_CHAN (unsigned int) ;
 unsigned int CR_RANGE (unsigned int) ;
 int EBUSY ;
 scalar_t__ apci3xxx_ai_started (struct comedi_device*) ;
 unsigned int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int apci3xxx_ai_setup(struct comedi_device *dev, unsigned int chanspec)
{
 unsigned int chan = CR_CHAN(chanspec);
 unsigned int range = CR_RANGE(chanspec);
 unsigned int aref = CR_AREF(chanspec);
 unsigned int delay_mode;
 unsigned int val;

 if (apci3xxx_ai_started(dev))
  return -EBUSY;


 writel(0x10000, dev->mmio + 12);


 delay_mode = readl(dev->mmio + 4);
 delay_mode &= 0xfffffef0;


 writel(delay_mode, dev->mmio + 4);


 val = (range & 3) | ((range >> 2) << 6) |
       ((aref == AREF_DIFF) << 7);
 writel(val, dev->mmio + 0);


 writel(delay_mode | 0x100, dev->mmio + 4);
 writel(chan, dev->mmio + 0);


 writel(delay_mode, dev->mmio + 4);


 writel(1, dev->mmio + 48);

 return 0;
}
