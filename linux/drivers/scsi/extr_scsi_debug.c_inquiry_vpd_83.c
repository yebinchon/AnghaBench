
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uuid_t ;
typedef int b ;


 int memcpy (unsigned char*,char const*,int) ;
 int memset (unsigned char*,int ,int) ;
 scalar_t__ naa3_comp_a ;
 scalar_t__ naa3_comp_b ;
 int put_unaligned_be16 (int,unsigned char*) ;
 int put_unaligned_be64 (scalar_t__,unsigned char*) ;
 char* sdebug_inq_product_id ;
 char* sdebug_inq_vendor_id ;
 scalar_t__ sdebug_uuid_ctl ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int inquiry_vpd_83(unsigned char *arr, int port_group_id,
     int target_dev_id, int dev_id_num,
     const char *dev_id_str, int dev_id_str_len,
     const uuid_t *lu_name)
{
 int num, port_a;
 char b[32];

 port_a = target_dev_id + 1;

 arr[0] = 0x2;
 arr[1] = 0x1;
 arr[2] = 0x0;
 memcpy(&arr[4], sdebug_inq_vendor_id, 8);
 memcpy(&arr[12], sdebug_inq_product_id, 16);
 memcpy(&arr[28], dev_id_str, dev_id_str_len);
 num = 8 + 16 + dev_id_str_len;
 arr[3] = num;
 num += 4;
 if (dev_id_num >= 0) {
  if (sdebug_uuid_ctl) {

   arr[num++] = 0x1;
   arr[num++] = 0xa;
   arr[num++] = 0x0;
   arr[num++] = 0x12;
   arr[num++] = 0x10;
   arr[num++] = 0x0;
   memcpy(arr + num, lu_name, 16);
   num += 16;
  } else {

   arr[num++] = 0x1;
   arr[num++] = 0x3;
   arr[num++] = 0x0;
   arr[num++] = 0x8;
   put_unaligned_be64(naa3_comp_b + dev_id_num, arr + num);
   num += 8;
  }

  arr[num++] = 0x61;
  arr[num++] = 0x94;
  arr[num++] = 0x0;
  arr[num++] = 0x4;
  arr[num++] = 0x0;
  arr[num++] = 0x0;
  arr[num++] = 0x0;
  arr[num++] = 0x1;
 }

 arr[num++] = 0x61;
 arr[num++] = 0x93;
 arr[num++] = 0x0;
 arr[num++] = 0x8;
 put_unaligned_be64(naa3_comp_a + port_a, arr + num);
 num += 8;

 arr[num++] = 0x61;
 arr[num++] = 0x95;
 arr[num++] = 0x0;
 arr[num++] = 0x4;
 arr[num++] = 0;
 arr[num++] = 0;
 put_unaligned_be16(port_group_id, arr + num);
 num += 2;

 arr[num++] = 0x61;
 arr[num++] = 0xa3;
 arr[num++] = 0x0;
 arr[num++] = 0x8;
 put_unaligned_be64(naa3_comp_a + target_dev_id, arr + num);
 num += 8;

 arr[num++] = 0x63;
 arr[num++] = 0xa8;
 arr[num++] = 0x0;
 arr[num++] = 24;
 memcpy(arr + num, "naa.32222220", 12);
 num += 12;
 snprintf(b, sizeof(b), "%08X", target_dev_id);
 memcpy(arr + num, b, 8);
 num += 8;
 memset(arr + num, 0, 4);
 num += 4;
 return num;
}
