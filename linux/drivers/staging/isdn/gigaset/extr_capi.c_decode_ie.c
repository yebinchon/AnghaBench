
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int hex_asc_hi (int) ;
 int hex_asc_lo (int) ;
 void* toupper (int ) ;

__attribute__((used)) static void decode_ie(u8 *in, char *out)
{
 int i = *in;
 while (i-- > 0) {

  *out++ = toupper(hex_asc_hi(*++in));
  *out++ = toupper(hex_asc_lo(*in));
 }
}
