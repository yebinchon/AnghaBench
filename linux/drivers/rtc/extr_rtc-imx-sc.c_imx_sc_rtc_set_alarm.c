
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
struct rtc_wkalrm {int enabled; struct rtc_time time; } ;
struct imx_sc_rpc_msg {int size; int func; int svc; int ver; } ;
struct imx_sc_msg_timer_rtc_set_alarm {int sec; int min; int hour; int day; scalar_t__ mon; scalar_t__ year; struct imx_sc_rpc_msg hdr; } ;
struct device {int dummy; } ;


 int IMX_SC_RPC_SVC_TIMER ;
 int IMX_SC_RPC_VERSION ;
 int IMX_SC_TIMER_FUNC_SET_RTC_ALARM ;
 int dev_err (struct device*,char*,int) ;
 int imx_sc_rtc_alarm_irq_enable (struct device*,int ) ;
 int imx_scu_call_rpc (int ,struct imx_sc_msg_timer_rtc_set_alarm*,int) ;
 int rtc_ipc_handle ;

__attribute__((used)) static int imx_sc_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct imx_sc_msg_timer_rtc_set_alarm msg;
 struct imx_sc_rpc_msg *hdr = &msg.hdr;
 int ret;
 struct rtc_time *alrm_tm = &alrm->time;

 hdr->ver = IMX_SC_RPC_VERSION;
 hdr->svc = IMX_SC_RPC_SVC_TIMER;
 hdr->func = IMX_SC_TIMER_FUNC_SET_RTC_ALARM;
 hdr->size = 3;

 msg.year = alrm_tm->tm_year + 1900;
 msg.mon = alrm_tm->tm_mon + 1;
 msg.day = alrm_tm->tm_mday;
 msg.hour = alrm_tm->tm_hour;
 msg.min = alrm_tm->tm_min;
 msg.sec = alrm_tm->tm_sec;

 ret = imx_scu_call_rpc(rtc_ipc_handle, &msg, 1);
 if (ret) {
  dev_err(dev, "set rtc alarm failed, ret %d\n", ret);
  return ret;
 }

 ret = imx_sc_rtc_alarm_irq_enable(dev, alrm->enabled);
 if (ret) {
  dev_err(dev, "enable rtc alarm failed, ret %d\n", ret);
  return ret;
 }

 return 0;
}
