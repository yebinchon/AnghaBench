
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct armada38x_rtc {scalar_t__ regs; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static u32 read_rtc_register(struct armada38x_rtc *rtc, u8 rtc_reg)
{
 return readl(rtc->regs + rtc_reg);
}
