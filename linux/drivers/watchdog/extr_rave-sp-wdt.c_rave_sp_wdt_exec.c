
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {int dummy; } ;
struct TYPE_2__ {int sp; } ;


 int rave_sp_exec (int ,void*,size_t,int *,int ) ;
 TYPE_1__* to_rave_sp_wdt (struct watchdog_device*) ;

__attribute__((used)) static int rave_sp_wdt_exec(struct watchdog_device *wdd, void *data,
       size_t data_size)
{
 return rave_sp_exec(to_rave_sp_wdt(wdd)->sp,
       data, data_size, ((void*)0), 0);
}
