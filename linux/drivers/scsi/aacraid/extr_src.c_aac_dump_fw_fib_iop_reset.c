
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int supported_options3; } ;
struct aac_dev {TYPE_1__ supplement_adapter_info; } ;
typedef int __le32 ;


 int AAC_OPTION_SUPPORTED3_IOP_RESET_FIB_DUMP ;
 int IOP_RESET_FW_FIB_DUMP ;
 int aac_adapter_sync_cmd (struct aac_dev*,int ,int ,int ,int ,int ,int ,int ,int *,int *,int *,int *,int *) ;
 int aac_fib_dump ;

__attribute__((used)) static void aac_dump_fw_fib_iop_reset(struct aac_dev *dev)
{
 __le32 supported_options3;

 if (!aac_fib_dump)
  return;

 supported_options3 = dev->supplement_adapter_info.supported_options3;
 if (!(supported_options3 & AAC_OPTION_SUPPORTED3_IOP_RESET_FIB_DUMP))
  return;

 aac_adapter_sync_cmd(dev, IOP_RESET_FW_FIB_DUMP,
   0, 0, 0, 0, 0, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
}
