
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;


 int memcpy (unsigned char*,unsigned char*,unsigned char) ;

__attribute__((used)) static u8 read_ie(unsigned char *bp, u8 max, u8 *body)
{
 u8 size = (*(bp + 1) <= max) ? *(bp + 1) : max;

 memcpy(body, bp + 2, size);
 return size;
}
