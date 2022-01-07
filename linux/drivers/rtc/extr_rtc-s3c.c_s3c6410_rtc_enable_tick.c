
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct s3c_rtc {scalar_t__ base; } ;


 scalar_t__ S3C2410_RTCCON ;
 unsigned int S3C64XX_RTCCON_TICEN ;
 unsigned int readw (scalar_t__) ;
 int seq_printf (struct seq_file*,char*,char*) ;

__attribute__((used)) static void s3c6410_rtc_enable_tick(struct s3c_rtc *info, struct seq_file *seq)
{
 unsigned int ticnt;

 ticnt = readw(info->base + S3C2410_RTCCON);
 ticnt &= S3C64XX_RTCCON_TICEN;

 seq_printf(seq, "periodic_IRQ\t: %s\n", ticnt ? "yes" : "no");
}
