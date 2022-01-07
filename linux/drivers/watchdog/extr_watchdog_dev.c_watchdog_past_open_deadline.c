
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_core_data {int open_deadline; } ;


 int ktime_after (int ,int ) ;
 int ktime_get () ;

__attribute__((used)) static bool watchdog_past_open_deadline(struct watchdog_core_data *data)
{
 return ktime_after(ktime_get(), data->open_deadline);
}
