
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
typedef int ssize_t ;


 char* TCM_LOOP_VERSION ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t tcm_loop_wwn_version_show(struct config_item *item, char *page)
{
 return sprintf(page, "TCM Loopback Fabric module %s\n", TCM_LOOP_VERSION);
}
