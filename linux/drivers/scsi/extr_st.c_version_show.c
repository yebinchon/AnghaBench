
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int ) ;
 int verstr ;

__attribute__((used)) static ssize_t version_show(struct device_driver *ddd, char *buf)
{
 return scnprintf(buf, PAGE_SIZE, "[%s]\n", verstr);
}
