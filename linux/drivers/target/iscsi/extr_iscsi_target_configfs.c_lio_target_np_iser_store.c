
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
typedef int ssize_t ;


 int ISCSI_INFINIBAND ;
 int lio_target_np_driver_store (struct config_item*,char const*,size_t,int ,char*) ;

__attribute__((used)) static ssize_t lio_target_np_iser_store(struct config_item *item,
     const char *page, size_t count)
{
 return lio_target_np_driver_store(item, page, count,
       ISCSI_INFINIBAND, "ib_isert");
}
