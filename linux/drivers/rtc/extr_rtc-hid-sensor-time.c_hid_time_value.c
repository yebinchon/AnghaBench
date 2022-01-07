
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;



__attribute__((used)) static u32 hid_time_value(size_t raw_len, char *raw_data)
{
 switch (raw_len) {
 case 1:
  return *(u8 *)raw_data;
 case 2:
  return *(u16 *)raw_data;
 case 4:
  return *(u32 *)raw_data;
 default:
  return (u32)(~0U);
 }
}
