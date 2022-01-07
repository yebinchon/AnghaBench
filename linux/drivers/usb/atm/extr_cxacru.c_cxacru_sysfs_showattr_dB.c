
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int s16 ;


 int PAGE_SIZE ;
 scalar_t__ likely (int) ;
 int snprintf (char*,int ,char*,int,int) ;

__attribute__((used)) static ssize_t cxacru_sysfs_showattr_dB(s16 value, char *buf)
{
 if (likely(value >= 0)) {
  return snprintf(buf, PAGE_SIZE, "%u.%02u\n",
     value / 100, value % 100);
 } else {
  value = -value;
  return snprintf(buf, PAGE_SIZE, "-%u.%02u\n",
     value / 100, value % 100);
 }
}
