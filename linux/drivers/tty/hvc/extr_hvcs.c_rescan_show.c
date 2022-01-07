
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int hvcs_rescan_status ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t rescan_show(struct device_driver *ddp, char *buf)
{

 return snprintf(buf, PAGE_SIZE, "%d\n", hvcs_rescan_status);
}
