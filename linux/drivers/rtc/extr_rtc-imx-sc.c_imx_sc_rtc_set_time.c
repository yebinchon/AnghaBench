
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct device {int dummy; } ;
struct arm_smccc_res {int a0; } ;


 int IMX_SIP_SRTC ;
 int IMX_SIP_SRTC_SET_TIME ;
 int arm_smccc_smc (int ,int ,int,int,int,int ,int ,int ,struct arm_smccc_res*) ;

__attribute__((used)) static int imx_sc_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct arm_smccc_res res;


 arm_smccc_smc(IMX_SIP_SRTC, IMX_SIP_SRTC_SET_TIME,
        ((tm->tm_year + 1900) << 16) | (tm->tm_mon + 1),
        (tm->tm_mday << 16) | tm->tm_hour,
        (tm->tm_min << 16) | tm->tm_sec,
        0, 0, 0, &res);

 return res.a0;
}
