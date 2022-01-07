
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gnttab_request_version () ;
 int gnttab_setup () ;

int gnttab_resume(void)
{
 gnttab_request_version();
 return gnttab_setup();
}
