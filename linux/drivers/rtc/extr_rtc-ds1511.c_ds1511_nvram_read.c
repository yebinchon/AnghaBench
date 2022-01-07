
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DS1511_RAMADDR_LSB ;
 int DS1511_RAMDATA ;
 char rtc_read (int ) ;
 int rtc_write (unsigned int,int ) ;

__attribute__((used)) static int ds1511_nvram_read(void *priv, unsigned int pos, void *buf,
        size_t size)
{
 int i;

 rtc_write(pos, DS1511_RAMADDR_LSB);
 for (i = 0; i < size; i++)
  *(char *)buf++ = rtc_read(DS1511_RAMDATA);

 return 0;
}
