
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void
lpfc_sha_init(uint32_t * HashResultPointer)
{
 HashResultPointer[0] = 0x67452301;
 HashResultPointer[1] = 0xEFCDAB89;
 HashResultPointer[2] = 0x98BADCFE;
 HashResultPointer[3] = 0x10325476;
 HashResultPointer[4] = 0xC3D2E1F0;
}
