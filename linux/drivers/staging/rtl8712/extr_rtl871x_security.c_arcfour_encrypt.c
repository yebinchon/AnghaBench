
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
typedef size_t u32 ;
struct arc4context {int dummy; } ;


 scalar_t__ arcfour_byte (struct arc4context*) ;

__attribute__((used)) static void arcfour_encrypt(struct arc4context *parc4ctx,
       u8 *dest, u8 *src, u32 len)
{
 u32 i;

 for (i = 0; i < len; i++)
  dest[i] = src[i] ^ (unsigned char)arcfour_byte(parc4ctx);
}
