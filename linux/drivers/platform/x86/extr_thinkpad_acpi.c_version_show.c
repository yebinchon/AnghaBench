
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 char* TPACPI_DESC ;
 char* TPACPI_VERSION ;
 int snprintf (char*,int ,char*,char*,char*) ;

__attribute__((used)) static ssize_t version_show(struct device_driver *drv, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%s v%s\n",
   TPACPI_DESC, TPACPI_VERSION);
}
