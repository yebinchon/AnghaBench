
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



__attribute__((used)) static u8 wilco_ec_checksum(const void *data, size_t size)
{
 u8 *data_bytes = (u8 *)data;
 u8 checksum = 0;
 size_t i;

 for (i = 0; i < size; i++)
  checksum += data_bytes[i];

 return checksum;
}
