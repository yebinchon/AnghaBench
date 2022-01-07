
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 unsigned long S3C2410_WTCNT_MAXCNT ;
 unsigned long S3C2410_WTCON_MAXDIV ;
 int S3C2410_WTCON_PRESCALE_MAX ;
 unsigned long clk_get_rate (struct clk*) ;

__attribute__((used)) static inline unsigned int s3c2410wdt_max_timeout(struct clk *clock)
{
 unsigned long freq = clk_get_rate(clock);

 return S3C2410_WTCNT_MAXCNT / (freq / (S3C2410_WTCON_PRESCALE_MAX + 1)
           / S3C2410_WTCON_MAXDIV);
}
