
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct dc_rtc {scalar_t__ regs; } ;


 int CMD_DELAY_US ;
 int CMD_TIMEOUT_US ;
 int const DC_RTC_CMD_MASK ;
 scalar_t__ DC_RTC_CONTROL ;
 int const DC_RTC_GO_BUSY ;
 int readb_relaxed_poll_timeout (scalar_t__,int const,int,int ,int ) ;
 int writeb_relaxed (int const,scalar_t__) ;

__attribute__((used)) static int dc_rtc_cmds(struct dc_rtc *rtc, const u8 *cmds, int len)
{
 u8 val;
 int i, ret;

 for (i = 0; i < len; i++) {
  writeb_relaxed((cmds[i] & DC_RTC_CMD_MASK) | DC_RTC_GO_BUSY,
          rtc->regs + DC_RTC_CONTROL);
  ret = readb_relaxed_poll_timeout(
   rtc->regs + DC_RTC_CONTROL, val,
   !(val & DC_RTC_GO_BUSY), CMD_DELAY_US, CMD_TIMEOUT_US);
  if (ret < 0)
   return ret;
 }

 return 0;
}
