
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 char* MEGASAS_VERSION ;
 int snprintf (char*,scalar_t__,char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static ssize_t version_show(struct device_driver *dd, char *buf)
{
 return snprintf(buf, strlen(MEGASAS_VERSION) + 2, "%s\n",
   MEGASAS_VERSION);
}
