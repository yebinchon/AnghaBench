
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hantro_fmt {scalar_t__ fourcc; } ;



__attribute__((used)) static const struct hantro_fmt *
hantro_find_format(const struct hantro_fmt *formats, unsigned int num_fmts,
     u32 fourcc)
{
 unsigned int i;

 for (i = 0; i < num_fmts; i++)
  if (formats[i].fourcc == fourcc)
   return &formats[i];
 return ((void*)0);
}
