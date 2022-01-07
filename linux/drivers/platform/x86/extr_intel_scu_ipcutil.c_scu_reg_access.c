
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scu_ipc_data {unsigned int count; int mask; int * data; int * addr; } ;


 int EINVAL ;
 int ENOTTY ;



 int intel_scu_ipc_readv (int *,int *,unsigned int) ;
 int intel_scu_ipc_update_register (int ,int ,int ) ;
 int intel_scu_ipc_writev (int *,int *,unsigned int) ;

__attribute__((used)) static int scu_reg_access(u32 cmd, struct scu_ipc_data *data)
{
 unsigned int count = data->count;

 if (count == 0 || count == 3 || count > 4)
  return -EINVAL;

 switch (cmd) {
 case 130:
  return intel_scu_ipc_readv(data->addr, data->data, count);
 case 128:
  return intel_scu_ipc_writev(data->addr, data->data, count);
 case 129:
  return intel_scu_ipc_update_register(data->addr[0],
          data->data[0], data->mask);
 default:
  return -ENOTTY;
 }
}
