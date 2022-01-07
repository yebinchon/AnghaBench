
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 scalar_t__ ap_poll_kthread ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t poll_thread_show(struct bus_type *bus, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%d\n", ap_poll_kthread ? 1 : 0);
}
