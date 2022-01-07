
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int cpcmd (char const*,char*,int,int *) ;
 int strlen (char*) ;

__attribute__((used)) static ssize_t recording_status_show(struct device_driver *driver, char *buf)
{
 static const char cp_command[] = "QUERY RECORDING ";
 int len;

 cpcmd(cp_command, buf, 4096, ((void*)0));
 len = strlen(buf);
 return len;
}
