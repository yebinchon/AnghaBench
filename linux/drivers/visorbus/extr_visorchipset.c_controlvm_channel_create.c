
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int address; } ;
struct visorchipset_device {struct visorchannel* controlvm_channel; TYPE_1__ controlvm_params; } ;
struct visorchannel {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int VMCALL_CONTROLVM_ADDR ;
 int unisys_vmcall (int ,int ) ;
 int virt_to_phys (TYPE_1__*) ;
 int visor_controlvm_channel_guid ;
 struct visorchannel* visorchannel_create (int ,int ,int *,int) ;

__attribute__((used)) static int controlvm_channel_create(struct visorchipset_device *dev)
{
 struct visorchannel *chan;
 u64 addr;
 int err;

 err = unisys_vmcall(VMCALL_CONTROLVM_ADDR,
       virt_to_phys(&dev->controlvm_params));
 if (err)
  return err;
 addr = dev->controlvm_params.address;
 chan = visorchannel_create(addr, GFP_KERNEL,
       &visor_controlvm_channel_guid, 1);
 if (!chan)
  return -ENOMEM;
 dev->controlvm_channel = chan;
 return 0;
}
