
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_rtc {scalar_t__ base; int ticnt_save; } ;


 scalar_t__ S3C2410_TICNT ;
 int readb (scalar_t__) ;

__attribute__((used)) static void s3c24xx_rtc_save_tick_cnt(struct s3c_rtc *info)
{
 info->ticnt_save = readb(info->base + S3C2410_TICNT);
}
