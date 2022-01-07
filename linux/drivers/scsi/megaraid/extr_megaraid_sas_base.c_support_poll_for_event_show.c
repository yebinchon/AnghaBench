
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 int support_poll_for_event ;

__attribute__((used)) static ssize_t support_poll_for_event_show(struct device_driver *dd, char *buf)
{
 return sprintf(buf, "%u\n", support_poll_for_event);
}
