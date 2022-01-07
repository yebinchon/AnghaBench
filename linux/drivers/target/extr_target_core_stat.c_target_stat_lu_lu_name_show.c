
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* unit_serial; } ;
struct se_device {TYPE_1__ t10_wwn; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,char*) ;
 scalar_t__ strlen (char*) ;
 struct se_device* to_stat_lu_dev (struct config_item*) ;

__attribute__((used)) static ssize_t target_stat_lu_lu_name_show(struct config_item *item, char *page)
{
 struct se_device *dev = to_stat_lu_dev(item);


 return snprintf(page, PAGE_SIZE, "%s\n",
   (strlen(dev->t10_wwn.unit_serial)) ?
   dev->t10_wwn.unit_serial : "None");
}
