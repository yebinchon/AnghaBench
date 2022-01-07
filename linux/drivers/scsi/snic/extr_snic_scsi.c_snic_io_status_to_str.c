
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 char const** snic_io_status_str ;

__attribute__((used)) static const char *
snic_io_status_to_str(unsigned int state)
{
 if ((state >= ARRAY_SIZE(snic_io_status_str)) ||
      (!snic_io_status_str[state]))
  return "Unknown";

 return snic_io_status_str[state];
}
