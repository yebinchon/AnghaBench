
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2fc_interface {int fip_packet_type; int fcoe_packet_type; } ;


 int __dev_remove_pack (int *) ;
 int synchronize_net () ;

__attribute__((used)) static void bnx2fc_net_cleanup(struct bnx2fc_interface *interface)
{

 __dev_remove_pack(&interface->fcoe_packet_type);
 __dev_remove_pack(&interface->fip_packet_type);
 synchronize_net();
}
