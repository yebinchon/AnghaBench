
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int sas_host; } ;


 int pqi_free_sas_node (int ) ;

void pqi_delete_sas_host(struct pqi_ctrl_info *ctrl_info)
{
 pqi_free_sas_node(ctrl_info->sas_host);
}
