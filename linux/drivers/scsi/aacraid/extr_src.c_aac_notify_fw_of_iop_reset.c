
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_dev {int dummy; } ;


 int IOP_RESET_ALWAYS ;
 int aac_adapter_sync_cmd (struct aac_dev*,int ,int ,int ,int ,int ,int ,int ,int *,int *,int *,int *,int *) ;

__attribute__((used)) static void aac_notify_fw_of_iop_reset(struct aac_dev *dev)
{
 aac_adapter_sync_cmd(dev, IOP_RESET_ALWAYS, 0, 0, 0, 0, 0, 0, ((void*)0),
      ((void*)0), ((void*)0), ((void*)0), ((void*)0));
}
