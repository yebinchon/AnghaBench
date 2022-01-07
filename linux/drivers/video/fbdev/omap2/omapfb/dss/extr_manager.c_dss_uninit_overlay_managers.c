
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (int *) ;
 int * managers ;
 scalar_t__ num_managers ;

void dss_uninit_overlay_managers(void)
{
 kfree(managers);
 managers = ((void*)0);
 num_managers = 0;
}
