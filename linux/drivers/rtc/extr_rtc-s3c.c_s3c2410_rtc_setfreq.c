
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c_rtc {scalar_t__ base; TYPE_1__* rtc; } ;
struct TYPE_2__ {int max_user_freq; } ;


 scalar_t__ S3C2410_TICNT ;
 unsigned int S3C2410_TICNT_ENABLE ;
 unsigned int readb (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void s3c2410_rtc_setfreq(struct s3c_rtc *info, int freq)
{
 unsigned int tmp = 0;
 int val;

 tmp = readb(info->base + S3C2410_TICNT);
 tmp &= S3C2410_TICNT_ENABLE;

 val = (info->rtc->max_user_freq / freq) - 1;
 tmp |= val;

 writel(tmp, info->base + S3C2410_TICNT);
}
