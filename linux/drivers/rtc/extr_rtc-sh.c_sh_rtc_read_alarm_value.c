
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_rtc {scalar_t__ regbase; } ;


 unsigned int AR_ENB ;
 int bcd2bin (unsigned int) ;
 unsigned int readb (scalar_t__) ;

__attribute__((used)) static inline int sh_rtc_read_alarm_value(struct sh_rtc *rtc, int reg_off)
{
 unsigned int byte;
 int value = -1;

 byte = readb(rtc->regbase + reg_off);
 if (byte & AR_ENB) {
  byte &= ~AR_ENB;
  value = bcd2bin(byte);
 }

 return value;
}
