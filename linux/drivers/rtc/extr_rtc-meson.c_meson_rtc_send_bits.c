
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_rtc {int dummy; } ;


 int meson_rtc_send_bit (struct meson_rtc*,int) ;

__attribute__((used)) static void meson_rtc_send_bits(struct meson_rtc *rtc, u32 data,
    unsigned int nr)
{
 u32 bit = 1 << (nr - 1);

 while (bit) {
  meson_rtc_send_bit(rtc, data & bit);
  bit >>= 1;
 }
}
