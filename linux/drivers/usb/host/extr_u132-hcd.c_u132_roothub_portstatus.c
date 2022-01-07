
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct u132 {int num_ports; TYPE_1__* platform_dev; } ;
typedef int __le32 ;
struct TYPE_4__ {int * portstatus; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int cpu_to_le32 (int) ;
 int dev_info (int *,char*,int,int ) ;
 TYPE_2__ roothub ;
 int u132_read_pcimem (struct u132*,int ,int*) ;

__attribute__((used)) static int u132_roothub_portstatus(struct u132 *u132, __le32 *desc, u16 wIndex)
{
 if (wIndex == 0 || wIndex > u132->num_ports) {
  return -EINVAL;
 } else {
  int port = wIndex - 1;
  u32 rh_portstatus = -1;
  int ret_portstatus = u132_read_pcimem(u132,
   roothub.portstatus[port], &rh_portstatus);
  *desc = cpu_to_le32(rh_portstatus);
  if (*(u16 *) (desc + 2)) {
   dev_info(&u132->platform_dev->dev, "Port %d Status Chan"
    "ge = %08X\n", port, *desc);
  }
  return ret_portstatus;
 }
}
