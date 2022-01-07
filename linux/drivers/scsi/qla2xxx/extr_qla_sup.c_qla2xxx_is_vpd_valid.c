
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static int
qla2xxx_is_vpd_valid(uint8_t *pos, uint8_t *end)
{
 if (pos >= end || *pos != 0x82)
  return 0;

 pos += 3 + pos[1];
 if (pos >= end || *pos != 0x90)
  return 0;

 pos += 3 + pos[1];
 if (pos >= end || *pos != 0x78)
  return 0;

 return 1;
}
