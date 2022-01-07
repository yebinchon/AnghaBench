
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_rnid_general_topology_data_s {void* num_attached_nodes; scalar_t__ phy_port_num; void* asso_type; } ;
struct bfa_fcs_lport_s {int dummy; } ;


 int RNID_ASSOCIATED_TYPE_HOST ;
 void* cpu_to_be32 (int) ;
 int memset (struct fc_rnid_general_topology_data_s*,int ,int) ;

__attribute__((used)) static void
bfa_fs_port_get_gen_topo_data(struct bfa_fcs_lport_s *port,
   struct fc_rnid_general_topology_data_s *gen_topo_data)
{
 memset(gen_topo_data, 0,
        sizeof(struct fc_rnid_general_topology_data_s));

 gen_topo_data->asso_type = cpu_to_be32(RNID_ASSOCIATED_TYPE_HOST);
 gen_topo_data->phy_port_num = 0;
 gen_topo_data->num_attached_nodes = cpu_to_be32(1);
}
