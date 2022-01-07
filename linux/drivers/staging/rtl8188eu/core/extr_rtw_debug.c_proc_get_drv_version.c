
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 char* DRIVERVERSION ;
 scalar_t__ snprintf (char*,int,char*,char*) ;

int proc_get_drv_version(char *page, char **start,
     off_t offset, int count,
     int *eof, void *data)
{
 int len = 0;

 len += snprintf(page + len, count - len, "%s\n", DRIVERVERSION);

 *eof = 1;
 return len;
}
