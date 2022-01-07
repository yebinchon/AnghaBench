
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DS1511_RAMADDR_LSB ;
 int DS1511_RAMDATA ;
 int rtc_write (char,int ) ;

__attribute__((used)) static int ds1511_nvram_write(void *priv, unsigned int pos, void *buf,
         size_t size)
{
 int i;

 rtc_write(pos, DS1511_RAMADDR_LSB);
 for (i = 0; i < size; i++)
  rtc_write(*(char *)buf++, DS1511_RAMDATA);

 return 0;
}
