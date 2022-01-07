
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;



__attribute__((used)) static void secmicputuint32(u8 *p, u32 val)

{
 long i;

 for (i = 0; i < 4; i++) {
  *p++ = (u8)(val & 0xff);
  val >>= 8;
 }
}
