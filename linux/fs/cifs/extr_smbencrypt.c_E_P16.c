
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int smbhash (unsigned char*,unsigned char*,unsigned char*) ;

__attribute__((used)) static int
E_P16(unsigned char *p14, unsigned char *p16)
{
 int rc;
 unsigned char sp8[8] =
     { 0x4b, 0x47, 0x53, 0x21, 0x40, 0x23, 0x24, 0x25 };

 rc = smbhash(p16, sp8, p14);
 if (rc)
  return rc;
 rc = smbhash(p16 + 8, sp8, p14 + 7);
 return rc;
}
