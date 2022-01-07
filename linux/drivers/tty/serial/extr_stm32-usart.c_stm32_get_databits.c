
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcflag_t ;
struct ktermios {int c_cflag; } ;





 int CSIZE ;

__attribute__((used)) static unsigned int stm32_get_databits(struct ktermios *termios)
{
 unsigned int bits;

 tcflag_t cflag = termios->c_cflag;

 switch (cflag & CSIZE) {





 case 130:
  bits = 5;
  break;
 case 129:
  bits = 6;
  break;
 case 128:
  bits = 7;
  break;

 default:
  bits = 8;
  break;
 }

 return bits;
}
