
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_rtc {int ticnt_en_save; scalar_t__ base; int ticnt_save; } ;


 scalar_t__ S3C2410_RTCCON ;
 scalar_t__ S3C2410_TICNT ;
 unsigned int readw (scalar_t__) ;
 int writel (int ,scalar_t__) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static void s3c6410_rtc_restore_tick_cnt(struct s3c_rtc *info)
{
 unsigned int con;

 writel(info->ticnt_save, info->base + S3C2410_TICNT);
 if (info->ticnt_en_save) {
  con = readw(info->base + S3C2410_RTCCON);
  writew(con | info->ticnt_en_save, info->base + S3C2410_RTCCON);
 }
}
