
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx_media_pixfmt {int* codes; int fourcc; scalar_t__ bayer; } ;



__attribute__((used)) static const
struct imx_media_pixfmt *__find_format(u32 fourcc,
           u32 code,
           bool allow_non_mbus,
           bool allow_bayer,
           const struct imx_media_pixfmt *array,
           u32 array_size)
{
 const struct imx_media_pixfmt *fmt;
 int i, j;

 for (i = 0; i < array_size; i++) {
  fmt = &array[i];

  if ((!allow_non_mbus && !fmt->codes[0]) ||
      (!allow_bayer && fmt->bayer))
   continue;

  if (fourcc && fmt->fourcc == fourcc)
   return fmt;

  if (!code)
   continue;

  for (j = 0; fmt->codes[j]; j++) {
   if (code == fmt->codes[j])
    return fmt;
  }
 }
 return ((void*)0);
}
