
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_rtc {scalar_t__ regbase; } ;


 int AR_ENB ;
 int bin2bcd (int) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static inline void sh_rtc_write_alarm_value(struct sh_rtc *rtc,
         int value, int reg_off)
{

 if (value < 0)
  writeb(0, rtc->regbase + reg_off);
 else
  writeb(bin2bcd(value) | AR_ENB, rtc->regbase + reg_off);
}
