
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtd_boardinfo {unsigned int range_bip10; unsigned int range_uni10; } ;
struct comedi_device {struct rtd_boardinfo* board_ptr; } ;






 unsigned int CR_AREF (unsigned int) ;
 unsigned int CR_CHAN (unsigned int) ;
 unsigned int CR_RANGE (unsigned int) ;

__attribute__((used)) static unsigned short rtd_convert_chan_gain(struct comedi_device *dev,
         unsigned int chanspec, int index)
{
 const struct rtd_boardinfo *board = dev->board_ptr;
 unsigned int chan = CR_CHAN(chanspec);
 unsigned int range = CR_RANGE(chanspec);
 unsigned int aref = CR_AREF(chanspec);
 unsigned short r = 0;

 r |= chan & 0xf;


 if (range < board->range_bip10) {

  r |= 0x000;
  r |= (range & 0x7) << 4;
 } else if (range < board->range_uni10) {

  r |= 0x100;
  r |= ((range - board->range_bip10) & 0x7) << 4;
 } else {

  r |= 0x200;
  r |= ((range - board->range_uni10) & 0x7) << 4;
 }

 switch (aref) {
 case 129:
  break;

 case 131:
  r |= 0x80;
  break;

 case 130:
  r |= 0x400;
  break;

 case 128:
  break;
 }
 return r;
}
