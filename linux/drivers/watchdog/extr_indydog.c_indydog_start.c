
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpuctrl0; } ;


 int SGIMC_CCTRL0_WDOG ;
 int indydog_lock ;
 TYPE_1__* sgimc ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void indydog_start(void)
{
 spin_lock(&indydog_lock);
 sgimc->cpuctrl0 |= SGIMC_CCTRL0_WDOG;
 spin_unlock(&indydog_lock);
}
