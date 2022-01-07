
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct u132 {int dummy; } ;
typedef int __le32 ;
struct TYPE_2__ {int status; } ;


 int cpu_to_le32 (int) ;
 TYPE_1__ roothub ;
 int u132_read_pcimem (struct u132*,int ,int*) ;

__attribute__((used)) static int u132_roothub_status(struct u132 *u132, __le32 *desc)
{
 u32 rh_status = -1;
 int ret_status = u132_read_pcimem(u132, roothub.status, &rh_status);
 *desc = cpu_to_le32(rh_status);
 return ret_status;
}
