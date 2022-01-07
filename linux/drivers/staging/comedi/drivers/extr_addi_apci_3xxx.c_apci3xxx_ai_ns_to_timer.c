
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {struct apci3xxx_private* private; struct apci3xxx_boardinfo* board_ptr; } ;
struct apci3xxx_private {int ai_time_base; unsigned int ai_timer; } ;
struct apci3xxx_boardinfo {int ai_conv_units; } ;



 unsigned int CMDF_ROUND_MASK ;


 unsigned int DIV_ROUND_CLOSEST (unsigned int,unsigned int) ;
 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 int EINVAL ;

__attribute__((used)) static int apci3xxx_ai_ns_to_timer(struct comedi_device *dev,
       unsigned int *ns, unsigned int flags)
{
 const struct apci3xxx_boardinfo *board = dev->board_ptr;
 struct apci3xxx_private *devpriv = dev->private;
 unsigned int base;
 unsigned int timer;
 int time_base;


 for (time_base = 0; time_base < 3; time_base++) {

  if (!(board->ai_conv_units & (1 << time_base)))
   continue;

  switch (time_base) {
  case 0:
   base = 1;
   break;
  case 1:
   base = 1000;
   break;
  case 2:
   base = 1000000;
   break;
  }

  switch (flags & CMDF_ROUND_MASK) {
  case 129:
  default:
   timer = DIV_ROUND_CLOSEST(*ns, base);
   break;
  case 130:
   timer = *ns / base;
   break;
  case 128:
   timer = DIV_ROUND_UP(*ns, base);
   break;
  }

  if (timer < 0x10000) {
   devpriv->ai_time_base = time_base;
   devpriv->ai_timer = timer;
   *ns = timer * time_base;
   return 0;
  }
 }
 return -EINVAL;
}
