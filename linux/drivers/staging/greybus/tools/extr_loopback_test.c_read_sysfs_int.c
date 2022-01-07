
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int close (int) ;
 int open_sysfs (char const*,char const*,int ) ;
 int read_sysfs_int_fd (int,char const*,char const*) ;

int read_sysfs_int(const char *sys_pfx, const char *node)
{
 int fd, val;

 fd = open_sysfs(sys_pfx, node, O_RDONLY);
 val = read_sysfs_int_fd(fd, sys_pfx, node);
 close(fd);
 return val;
}
