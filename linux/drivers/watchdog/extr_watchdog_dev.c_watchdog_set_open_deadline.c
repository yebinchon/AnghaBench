
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_core_data {scalar_t__ open_deadline; } ;


 scalar_t__ KTIME_MAX ;
 scalar_t__ ktime_get () ;
 scalar_t__ ktime_set (scalar_t__,int ) ;
 scalar_t__ open_timeout ;

__attribute__((used)) static void watchdog_set_open_deadline(struct watchdog_core_data *data)
{
 data->open_deadline = open_timeout ?
  ktime_get() + ktime_set(open_timeout, 0) : KTIME_MAX;
}
