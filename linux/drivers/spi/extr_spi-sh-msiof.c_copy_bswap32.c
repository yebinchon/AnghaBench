
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int get_unaligned (int const*) ;
 int put_unaligned (void*,int *) ;
 void* swab32 (int ) ;

__attribute__((used)) static void copy_bswap32(u32 *dst, const u32 *src, unsigned int words)
{

 if ((unsigned long)src & 3) {
  while (words--) {
   *dst++ = swab32(get_unaligned(src));
   src++;
  }
 } else if ((unsigned long)dst & 3) {
  while (words--) {
   put_unaligned(swab32(*src++), dst);
   dst++;
  }
 } else {
  while (words--)
   *dst++ = swab32(*src++);
 }
}
