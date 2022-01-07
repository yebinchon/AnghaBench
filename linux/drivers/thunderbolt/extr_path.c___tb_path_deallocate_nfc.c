
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_path {int path_length; TYPE_1__* hops; int nfc_credits; } ;
struct TYPE_2__ {int in_port; } ;


 int tb_port_add_nfc_credits (int ,int ) ;
 int tb_port_warn (int ,char*,int) ;

__attribute__((used)) static void __tb_path_deallocate_nfc(struct tb_path *path, int first_hop)
{
 int i, res;
 for (i = first_hop; i < path->path_length; i++) {
  res = tb_port_add_nfc_credits(path->hops[i].in_port,
           -path->nfc_credits);
  if (res)
   tb_port_warn(path->hops[i].in_port,
         "nfc credits deallocation failed for hop %d\n",
         i);
 }
}
