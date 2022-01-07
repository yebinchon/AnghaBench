
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 int MAX_SYSFS_PATH ;
 scalar_t__ access (char*,int ) ;
 int snprintf (char*,int,char*,char const*,char const*) ;

int is_loopback_device(const char *path, const char *node)
{
 char file[MAX_SYSFS_PATH];

 snprintf(file, MAX_SYSFS_PATH, "%s%s/iteration_count", path, node);
 if (access(file, F_OK) == 0)
  return 1;
 return 0;
}
