
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_rtc {int serial; } ;


 unsigned int RTC_REGMEM_0 ;
 int regmap_bulk_write (int ,unsigned int,void*,unsigned int) ;

__attribute__((used)) static int meson_rtc_regmem_write(void *context, unsigned int offset,
      void *buf, size_t bytes)
{
 struct meson_rtc *rtc = context;
 unsigned int write_offset, write_size;

 write_offset = RTC_REGMEM_0 + (offset / 4);
 write_size = bytes / 4;

 return regmap_bulk_write(rtc->serial, write_offset, buf, write_size);
}
