
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hantro_fmt {scalar_t__ codec_mode; } ;


 scalar_t__ HANTRO_MODE_NONE ;

__attribute__((used)) static const struct hantro_fmt *
hantro_get_default_fmt(const struct hantro_fmt *formats, unsigned int num_fmts,
         bool bitstream)
{
 unsigned int i;

 for (i = 0; i < num_fmts; i++) {
  if (bitstream == (formats[i].codec_mode !=
      HANTRO_MODE_NONE))
   return &formats[i];
 }
 return ((void*)0);
}
