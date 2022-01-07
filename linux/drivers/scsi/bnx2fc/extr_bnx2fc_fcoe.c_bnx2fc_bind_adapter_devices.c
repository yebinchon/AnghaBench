
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2fc_hba {int dummy; } ;


 int ENOMEM ;
 scalar_t__ bnx2fc_setup_fw_resc (struct bnx2fc_hba*) ;
 scalar_t__ bnx2fc_setup_task_ctx (struct bnx2fc_hba*) ;
 int bnx2fc_unbind_adapter_devices (struct bnx2fc_hba*) ;

__attribute__((used)) static int bnx2fc_bind_adapter_devices(struct bnx2fc_hba *hba)
{
 if (bnx2fc_setup_task_ctx(hba))
  goto mem_err;

 if (bnx2fc_setup_fw_resc(hba))
  goto mem_err;

 return 0;
mem_err:
 bnx2fc_unbind_adapter_devices(hba);
 return -ENOMEM;
}
