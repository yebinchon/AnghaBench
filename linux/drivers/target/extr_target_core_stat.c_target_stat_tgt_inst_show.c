
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_hba {int hba_index; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct se_hba* se_hba; } ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 TYPE_1__* to_stat_tgt_dev (struct config_item*) ;

__attribute__((used)) static ssize_t target_stat_tgt_inst_show(struct config_item *item, char *page)
{
 struct se_hba *hba = to_stat_tgt_dev(item)->se_hba;

 return snprintf(page, PAGE_SIZE, "%u\n", hba->hba_index);
}
