
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
typedef int __le16 ;


 size_t le16_to_cpu (int const) ;

__attribute__((used)) static u16 get_word(const void *data, u16 offset)
{
 const __le16 *p = data;
 return le16_to_cpu(p[offset]);
}
