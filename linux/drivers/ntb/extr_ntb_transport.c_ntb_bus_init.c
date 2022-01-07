
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_ctx {int entry; } ;


 int list_add_tail (int *,int *) ;
 int ntb_transport_list ;

__attribute__((used)) static int ntb_bus_init(struct ntb_transport_ctx *nt)
{
 list_add_tail(&nt->entry, &ntb_transport_list);
 return 0;
}
