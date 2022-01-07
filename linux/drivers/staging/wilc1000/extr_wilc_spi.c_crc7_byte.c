
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int* crc7_syndrome_table ;

__attribute__((used)) static u8 crc7_byte(u8 crc, u8 data)
{
 return crc7_syndrome_table[(crc << 1) ^ data];
}
