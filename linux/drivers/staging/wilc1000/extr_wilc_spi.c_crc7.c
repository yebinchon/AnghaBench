
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int crc7_byte (int ,int ) ;

__attribute__((used)) static u8 crc7(u8 crc, const u8 *buffer, u32 len)
{
 while (len--)
  crc = crc7_byte(crc, *buffer++);
 return crc;
}
