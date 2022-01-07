
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_ios {int dummy; } ;
struct mmc_host {int dummy; } ;



__attribute__((used)) static int gb_mmc_switch_voltage(struct mmc_host *mmc, struct mmc_ios *ios)
{
 return 0;
}
