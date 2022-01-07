
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct amvdec_format {unsigned int pixfmt; } ;



__attribute__((used)) static const struct amvdec_format *
find_format(const struct amvdec_format *fmts, u32 size, u32 pixfmt)
{
 unsigned int i;

 for (i = 0; i < size; i++) {
  if (fmts[i].pixfmt == pixfmt)
   return &fmts[i];
 }

 return ((void*)0);
}
