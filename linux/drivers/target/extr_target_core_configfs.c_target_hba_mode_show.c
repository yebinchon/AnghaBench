
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_hba {int hba_flags; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int HBA_FLAGS_PSCSI_MODE ;
 int sprintf (char*,char*,int) ;
 struct se_hba* to_hba (struct config_item*) ;

__attribute__((used)) static ssize_t target_hba_mode_show(struct config_item *item, char *page)
{
 struct se_hba *hba = to_hba(item);
 int hba_mode = 0;

 if (hba->hba_flags & HBA_FLAGS_PSCSI_MODE)
  hba_mode = 1;

 return sprintf(page, "%d\n", hba_mode);
}
