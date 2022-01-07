
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_rtc {TYPE_1__* data; } ;
struct TYPE_2__ {int (* clear_events ) (struct stm32_rtc*,unsigned int) ;} ;


 int stub1 (struct stm32_rtc*,unsigned int) ;

__attribute__((used)) static void stm32_rtc_clear_event_flags(struct stm32_rtc *rtc,
     unsigned int flags)
{
 rtc->data->clear_events(rtc, flags);
}
