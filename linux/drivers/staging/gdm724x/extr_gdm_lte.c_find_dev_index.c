
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;


 int EINVAL ;
 scalar_t__ MAX_NIC_TYPE ;

__attribute__((used)) static int find_dev_index(u32 nic_type)
{
 u8 index;

 index = (u8)(nic_type & 0x0000000f);
 if (index >= MAX_NIC_TYPE)
  return -EINVAL;

 return index;
}
