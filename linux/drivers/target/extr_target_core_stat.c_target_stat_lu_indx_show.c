
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int SCSI_LU_INDEX ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t target_stat_lu_indx_show(struct config_item *item, char *page)
{
 return snprintf(page, PAGE_SIZE, "%u\n", SCSI_LU_INDEX);
}
