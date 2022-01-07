
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
typedef int ssize_t ;


 int ISCSI_CXGBIT ;
 int lio_target_np_driver_show (struct config_item*,char*,int ) ;

__attribute__((used)) static ssize_t lio_target_np_cxgbit_show(struct config_item *item, char *page)
{
 return lio_target_np_driver_show(item, page, ISCSI_CXGBIT);
}
