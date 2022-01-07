
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;




 int WARN_ON (int) ;

__attribute__((used)) static u32 rtw8822c_get_path_write_addr(u8 path)
{
 u32 base_addr;

 switch (path) {
 case 129:
  base_addr = 0x1800;
  break;
 case 128:
  base_addr = 0x4100;
  break;
 default:
  WARN_ON(1);
  return -1;
 }

 return base_addr;
}
