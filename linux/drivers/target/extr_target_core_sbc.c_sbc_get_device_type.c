
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct se_device {int dummy; } ;


 int TYPE_DISK ;

u32 sbc_get_device_type(struct se_device *dev)
{
 return TYPE_DISK;
}
