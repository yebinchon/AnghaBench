
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned long u32 ;
struct dc_rtc {scalar_t__ regs; } ;


 int ARRAY_SIZE (int const*) ;


 scalar_t__ DC_RTC_REFERENCE ;
 scalar_t__ DC_RTC_TIME ;
 int dc_rtc_cmds (struct dc_rtc*,int const*,int ) ;
 unsigned long readl_relaxed (scalar_t__) ;

__attribute__((used)) static int dc_rtc_read(struct dc_rtc *rtc, unsigned long *val)
{
 static const u8 read_cmds[] = {128, 129};
 u32 reference, time1, time2;
 int ret;

 ret = dc_rtc_cmds(rtc, read_cmds, ARRAY_SIZE(read_cmds));
 if (ret < 0)
  return ret;

 reference = readl_relaxed(rtc->regs + DC_RTC_REFERENCE);
 time1 = readl_relaxed(rtc->regs + DC_RTC_TIME);

 while (1) {
  time2 = readl_relaxed(rtc->regs + DC_RTC_TIME);
  if (time1 == time2)
   break;
  time1 = time2;
 }

 *val = reference + time1;
 return 0;
}
