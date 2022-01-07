
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int close (int) ;
 int open_sysfs (char const*,char const*,int ) ;
 float read_sysfs_float_fd (int,char const*,char const*) ;

float read_sysfs_float(const char *sys_pfx, const char *node)
{
 int fd;
 float val;

 fd = open_sysfs(sys_pfx, node, O_RDONLY);
 val = read_sysfs_float_fd(fd, sys_pfx, node);
 close(fd);
 return val;
}
