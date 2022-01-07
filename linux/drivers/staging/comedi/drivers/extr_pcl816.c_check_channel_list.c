
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int class_dev; } ;


 int CR_AREF (unsigned int) ;
 unsigned int CR_CHAN (unsigned int) ;
 int CR_RANGE (unsigned int) ;
 int dev_dbg (int ,char*,unsigned int,unsigned int,unsigned int,unsigned int,...) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int check_channel_list(struct comedi_device *dev,
         struct comedi_subdevice *s,
         unsigned int *chanlist,
         unsigned int chanlen)
{
 unsigned int chansegment[16];
 unsigned int i, nowmustbechan, seglen;


 if (chanlen < 1) {
  dev_err(dev->class_dev, "range/channel list is empty!\n");
  return 0;
 }

 if (chanlen > 1) {

  chansegment[0] = chanlist[0];
  for (i = 1, seglen = 1; i < chanlen; i++, seglen++) {

   if (chanlist[0] == chanlist[i])
    break;
   nowmustbechan =
       (CR_CHAN(chansegment[i - 1]) + 1) % chanlen;
   if (nowmustbechan != CR_CHAN(chanlist[i])) {

    dev_dbg(dev->class_dev,
     "channel list must be continuous! chanlist[%i]=%d but must be %d or %d!\n",
     i, CR_CHAN(chanlist[i]), nowmustbechan,
     CR_CHAN(chanlist[0]));
    return 0;
   }

   chansegment[i] = chanlist[i];
  }


  for (i = 0; i < chanlen; i++) {
   if (chanlist[i] != chansegment[i % seglen]) {
    dev_dbg(dev->class_dev,
     "bad channel or range number! chanlist[%i]=%d,%d,%d and not %d,%d,%d!\n",
     i, CR_CHAN(chansegment[i]),
     CR_RANGE(chansegment[i]),
     CR_AREF(chansegment[i]),
     CR_CHAN(chanlist[i % seglen]),
     CR_RANGE(chanlist[i % seglen]),
     CR_AREF(chansegment[i % seglen]));
    return 0;
   }
  }
 } else {
  seglen = 1;
 }

 return seglen;
}
