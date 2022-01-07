
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_wdt {scalar_t__ reg_base; } ;


 scalar_t__ S3C2410_WTCON ;
 int S3C2410_WTCON_ENABLE ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline int s3c2410wdt_is_running(struct s3c2410_wdt *wdt)
{
 return readl(wdt->reg_base + S3C2410_WTCON) & S3C2410_WTCON_ENABLE;
}
