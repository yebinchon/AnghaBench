
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
typedef int ssize_t ;


 int IBMVSCSIS_VERSION ;
 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t ibmvscsis_wwn_version_show(struct config_item *item,
       char *page)
{
 return scnprintf(page, PAGE_SIZE, "%s\n", IBMVSCSIS_VERSION);
}
