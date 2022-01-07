
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * release; int parent; int * bus; } ;
struct tcm_loop_hba {TYPE_1__ dev; } ;


 int ENODEV ;
 int dev_set_name (TYPE_1__*,char*,int) ;
 int device_register (TYPE_1__*) ;
 int pr_err (char*,int) ;
 int tcm_loop_lld_bus ;
 int tcm_loop_primary ;
 int tcm_loop_release_adapter ;

__attribute__((used)) static int tcm_loop_setup_hba_bus(struct tcm_loop_hba *tl_hba, int tcm_loop_host_id)
{
 int ret;

 tl_hba->dev.bus = &tcm_loop_lld_bus;
 tl_hba->dev.parent = tcm_loop_primary;
 tl_hba->dev.release = &tcm_loop_release_adapter;
 dev_set_name(&tl_hba->dev, "tcm_loop_adapter_%d", tcm_loop_host_id);

 ret = device_register(&tl_hba->dev);
 if (ret) {
  pr_err("device_register() failed for tl_hba->dev: %d\n", ret);
  return -ENODEV;
 }

 return 0;
}
