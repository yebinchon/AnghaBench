
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_rtc {scalar_t__ base; int ticnt_save; int ticnt_en_save; } ;


 scalar_t__ S3C2410_RTCCON ;
 scalar_t__ S3C2410_TICNT ;
 int S3C64XX_RTCCON_TICEN ;
 int readl (scalar_t__) ;
 int readw (scalar_t__) ;

__attribute__((used)) static void s3c6410_rtc_save_tick_cnt(struct s3c_rtc *info)
{
 info->ticnt_en_save = readw(info->base + S3C2410_RTCCON);
 info->ticnt_en_save &= S3C64XX_RTCCON_TICEN;
 info->ticnt_save = readl(info->base + S3C2410_TICNT);
}
