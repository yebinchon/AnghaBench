
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loopback_test {int poll_count; TYPE_1__* fds; } ;
struct TYPE_2__ {int fd; } ;


 int close (int ) ;

__attribute__((used)) static int close_poll_files(struct loopback_test *t)
{
 int i;
 for (i = 0; i < t->poll_count; i++)
  close(t->fds[i].fd);

 return 0;
}
