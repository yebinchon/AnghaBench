
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_tpg_np {int dummy; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
typedef enum iscsit_transport_type { ____Placeholder_iscsit_transport_type } iscsit_transport_type ;


 struct iscsi_tpg_np* iscsit_tpg_locate_child_np (struct iscsi_tpg_np*,int) ;
 int sprintf (char*,char*) ;
 struct iscsi_tpg_np* to_iscsi_tpg_np (struct config_item*) ;

__attribute__((used)) static ssize_t lio_target_np_driver_show(struct config_item *item, char *page,
      enum iscsit_transport_type type)
{
 struct iscsi_tpg_np *tpg_np = to_iscsi_tpg_np(item);
 struct iscsi_tpg_np *tpg_np_new;
 ssize_t rb;

 tpg_np_new = iscsit_tpg_locate_child_np(tpg_np, type);
 if (tpg_np_new)
  rb = sprintf(page, "1\n");
 else
  rb = sprintf(page, "0\n");

 return rb;
}
