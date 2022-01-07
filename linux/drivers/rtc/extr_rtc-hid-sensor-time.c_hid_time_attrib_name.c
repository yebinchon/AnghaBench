
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 unsigned int TIME_RTC_CHANNEL_MAX ;
 scalar_t__* hid_time_addresses ;
 char const** hid_time_channel_names ;

__attribute__((used)) static const char *hid_time_attrib_name(u32 attrib_id)
{
 static const char unknown[] = "unknown";
 unsigned i;

 for (i = 0; i < TIME_RTC_CHANNEL_MAX; ++i) {
  if (hid_time_addresses[i] == attrib_id)
   return hid_time_channel_names[i];
 }
 return unknown;
}
