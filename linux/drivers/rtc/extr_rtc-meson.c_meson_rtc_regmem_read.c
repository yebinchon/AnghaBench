
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_rtc {int serial; } ;


 unsigned int RTC_REGMEM_0 ;
 int regmap_bulk_read (int ,unsigned int,void*,unsigned int) ;

__attribute__((used)) static int meson_rtc_regmem_read(void *context, unsigned int offset,
     void *buf, size_t bytes)
{
 struct meson_rtc *rtc = context;
 unsigned int read_offset, read_size;

 read_offset = RTC_REGMEM_0 + (offset / 4);
 read_size = bytes / 4;

 return regmap_bulk_read(rtc->serial, read_offset, buf, read_size);
}
