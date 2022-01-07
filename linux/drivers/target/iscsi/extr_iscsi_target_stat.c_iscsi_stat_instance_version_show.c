
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
typedef int ssize_t ;


 char* ISCSIT_VERSION ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t iscsi_stat_instance_version_show(struct config_item *item,
  char *page)
{
 return snprintf(page, PAGE_SIZE, "%s\n", ISCSIT_VERSION);
}
