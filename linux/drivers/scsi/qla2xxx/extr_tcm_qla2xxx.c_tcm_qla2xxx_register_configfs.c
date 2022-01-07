
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int release; int machine; int sysname; } ;


 int ENOMEM ;
 int QLA2XXX_VERSION ;
 int WQ_MEM_RECLAIM ;
 int alloc_workqueue (char*,int ,int ) ;
 int pr_debug (char*,int ,int ,int ,int ) ;
 int target_register_template (int *) ;
 int target_unregister_template (int *) ;
 int tcm_qla2xxx_free_wq ;
 int tcm_qla2xxx_npiv_ops ;
 int tcm_qla2xxx_ops ;
 TYPE_1__* utsname () ;

__attribute__((used)) static int tcm_qla2xxx_register_configfs(void)
{
 int ret;

 pr_debug("TCM QLOGIC QLA2XXX fabric module %s on %s/%s on %s\n",
     QLA2XXX_VERSION, utsname()->sysname,
     utsname()->machine, utsname()->release);

 ret = target_register_template(&tcm_qla2xxx_ops);
 if (ret)
  return ret;

 ret = target_register_template(&tcm_qla2xxx_npiv_ops);
 if (ret)
  goto out_fabric;

 tcm_qla2xxx_free_wq = alloc_workqueue("tcm_qla2xxx_free",
      WQ_MEM_RECLAIM, 0);
 if (!tcm_qla2xxx_free_wq) {
  ret = -ENOMEM;
  goto out_fabric_npiv;
 }

 return 0;

out_fabric_npiv:
 target_unregister_template(&tcm_qla2xxx_npiv_ops);
out_fabric:
 target_unregister_template(&tcm_qla2xxx_ops);
 return ret;
}
