
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int O_RDWR ;
 int SYSFS_MAX_INT ;
 int abort () ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*,char const*,char const*,int ) ;
 int open_sysfs (char const*,char const*,int ) ;
 int snprintf (char*,int,char*,int) ;
 int stderr ;
 int strerror (int ) ;
 scalar_t__ write (int,char*,int) ;

void write_sysfs_val(const char *sys_pfx, const char *node, int val)
{
 int fd, len;
 char buf[SYSFS_MAX_INT];

 fd = open_sysfs(sys_pfx, node, O_RDWR);
 len = snprintf(buf, sizeof(buf), "%d", val);
 if (write(fd, buf, len) < 0) {
  fprintf(stderr, "unable to write to %s%s %s\n", sys_pfx, node,
   strerror(errno));
  close(fd);
  abort();
 }
 close(fd);
}
