
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int ap_poll_thread_start () ;
 int ap_poll_thread_stop () ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static ssize_t poll_thread_store(struct bus_type *bus,
     const char *buf, size_t count)
{
 int flag, rc;

 if (sscanf(buf, "%d\n", &flag) != 1)
  return -EINVAL;
 if (flag) {
  rc = ap_poll_thread_start();
  if (rc)
   count = rc;
 } else
  ap_poll_thread_stop();
 return count;
}
