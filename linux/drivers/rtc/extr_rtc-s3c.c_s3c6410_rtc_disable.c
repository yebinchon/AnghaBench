
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_rtc {scalar_t__ base; } ;


 scalar_t__ S3C2410_RTCCON ;
 unsigned int S3C2410_RTCCON_RTCEN ;
 unsigned int S3C64XX_RTCCON_TICEN ;
 unsigned int readw (scalar_t__) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static void s3c6410_rtc_disable(struct s3c_rtc *info)
{
 unsigned int con;

 con = readw(info->base + S3C2410_RTCCON);
 con &= ~S3C64XX_RTCCON_TICEN;
 con &= ~S3C2410_RTCCON_RTCEN;
 writew(con, info->base + S3C2410_RTCCON);
}
