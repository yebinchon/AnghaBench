
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int ) ;
 int target_unregister_template (int *) ;
 int tcm_qla2xxx_free_wq ;
 int tcm_qla2xxx_npiv_ops ;
 int tcm_qla2xxx_ops ;

__attribute__((used)) static void tcm_qla2xxx_deregister_configfs(void)
{
 destroy_workqueue(tcm_qla2xxx_free_wq);

 target_unregister_template(&tcm_qla2xxx_ops);
 target_unregister_template(&tcm_qla2xxx_npiv_ops);
}
