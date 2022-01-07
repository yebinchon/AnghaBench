
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int memcpy (int *,int const*,unsigned int) ;

__attribute__((used)) static void copy_plain32(u32 *dst, const u32 *src, unsigned int words)
{
 memcpy(dst, src, words * 4);
}
