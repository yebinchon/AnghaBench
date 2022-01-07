
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
typedef int u32 ;
struct dc_rtc {scalar_t__ regs; } ;


 int ARRAY_SIZE (int const*) ;



 scalar_t__ DC_RTC_REFERENCE ;
 int dc_rtc_cmds (struct dc_rtc*,int const*,int ) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int dc_rtc_write(struct dc_rtc *rtc, u32 val)
{
 static const u8 write_cmds[] = {128, 130, 129, 130};

 writel_relaxed(val, rtc->regs + DC_RTC_REFERENCE);
 return dc_rtc_cmds(rtc, write_cmds, ARRAY_SIZE(write_cmds));
}
