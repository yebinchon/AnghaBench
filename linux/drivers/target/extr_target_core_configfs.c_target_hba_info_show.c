
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct se_hba {int hba_id; TYPE_2__* backend; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {char* name; } ;


 char* TARGET_CORE_VERSION ;
 int sprintf (char*,char*,int,char*,char*) ;
 struct se_hba* to_hba (struct config_item*) ;

__attribute__((used)) static ssize_t target_hba_info_show(struct config_item *item, char *page)
{
 struct se_hba *hba = to_hba(item);

 return sprintf(page, "HBA Index: %d plugin: %s version: %s\n",
   hba->hba_id, hba->backend->ops->name,
   TARGET_CORE_VERSION);
}
