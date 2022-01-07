
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct amvdec_format {scalar_t__* pixfmts_cap; } ;



__attribute__((used)) static unsigned int
vdec_supports_pixfmt_cap(const struct amvdec_format *fmt_out, u32 pixfmt_cap)
{
 int i;

 for (i = 0; fmt_out->pixfmts_cap[i]; i++)
  if (fmt_out->pixfmts_cap[i] == pixfmt_cap)
   return 1;

 return 0;
}
