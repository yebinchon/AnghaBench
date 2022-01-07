
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;


 int MAX_SYSFS_PATH ;
 int abort () ;
 int fprintf (int ,char*,char*) ;
 int open (char*,int) ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 int stderr ;

int open_sysfs(const char *sys_pfx, const char *node, int flags)
{
 int fd;
 char path[MAX_SYSFS_PATH];

 snprintf(path, sizeof(path), "%s%s", sys_pfx, node);
 fd = open(path, flags);
 if (fd < 0) {
  fprintf(stderr, "unable to open %s\n", path);
  abort();
 }
 return fd;
}
