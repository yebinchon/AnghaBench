
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t cxacru_sysfs_showattr_u32(u32 value, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%u\n", value);
}
