
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dell_wmi_event {int type; int length; } ;



__attribute__((used)) static bool dell_wmi_aio_event_check(u8 *buffer, int length)
{
 struct dell_wmi_event *event = (struct dell_wmi_event *)buffer;

 if (event == ((void*)0) || length < 6)
  return 0;

 if ((event->type == 0 || event->type == 0xf) &&
   event->length >= 2)
  return 1;

 return 0;
}
