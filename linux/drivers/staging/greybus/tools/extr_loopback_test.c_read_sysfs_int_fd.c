
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int SYSFS_MAX_INT ;
 int abort () ;
 int atoi (char*) ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*,char const*,char const*,int ) ;
 scalar_t__ read (int,char*,int) ;
 int stderr ;
 int strerror (int ) ;

int read_sysfs_int_fd(int fd, const char *sys_pfx, const char *node)
{
 char buf[SYSFS_MAX_INT];

 if (read(fd, buf, sizeof(buf)) < 0) {
  fprintf(stderr, "unable to read from %s%s %s\n", sys_pfx, node,
   strerror(errno));
  close(fd);
  abort();
 }
 return atoi(buf);
}
