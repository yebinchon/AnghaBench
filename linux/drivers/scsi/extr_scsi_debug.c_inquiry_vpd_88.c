
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (unsigned char*,int ,int) ;
 scalar_t__ naa3_comp_a ;
 int put_unaligned_be64 (scalar_t__,unsigned char*) ;

__attribute__((used)) static int inquiry_vpd_88(unsigned char *arr, int target_dev_id)
{
 int num = 0;
 int port_a, port_b;

 port_a = target_dev_id + 1;
 port_b = port_a + 1;
 arr[num++] = 0x0;
 arr[num++] = 0x0;
 arr[num++] = 0x0;
 arr[num++] = 0x1;
 memset(arr + num, 0, 6);
 num += 6;
 arr[num++] = 0x0;
 arr[num++] = 12;

 arr[num++] = 0x61;
 arr[num++] = 0x93;
 arr[num++] = 0x0;
 arr[num++] = 0x8;
 put_unaligned_be64(naa3_comp_a + port_a, arr + num);
 num += 8;
 arr[num++] = 0x0;
 arr[num++] = 0x0;
 arr[num++] = 0x0;
 arr[num++] = 0x2;
 memset(arr + num, 0, 6);
 num += 6;
 arr[num++] = 0x0;
 arr[num++] = 12;

 arr[num++] = 0x61;
 arr[num++] = 0x93;
 arr[num++] = 0x0;
 arr[num++] = 0x8;
 put_unaligned_be64(naa3_comp_a + port_b, arr + num);
 num += 8;

 return num;
}
