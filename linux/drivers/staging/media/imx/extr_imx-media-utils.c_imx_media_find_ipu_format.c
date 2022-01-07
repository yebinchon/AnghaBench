
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx_media_pixfmt {int* codes; } ;
typedef enum codespace_sel { ____Placeholder_codespace_sel } codespace_sel ;





 int NUM_IPU_RGB_FORMATS ;
 int NUM_IPU_YUV_FORMATS ;
 struct imx_media_pixfmt* ipu_rgb_formats ;
 struct imx_media_pixfmt* ipu_yuv_formats ;

const struct imx_media_pixfmt *
imx_media_find_ipu_format(u32 code, enum codespace_sel cs_sel)
{
 const struct imx_media_pixfmt *array, *fmt, *ret = ((void*)0);
 u32 array_size;
 int i, j;

 switch (cs_sel) {
 case 128:
  array_size = NUM_IPU_YUV_FORMATS;
  array = ipu_yuv_formats;
  break;
 case 129:
  array_size = NUM_IPU_RGB_FORMATS;
  array = ipu_rgb_formats;
  break;
 case 130:
  array_size = NUM_IPU_YUV_FORMATS + NUM_IPU_RGB_FORMATS;
  array = ipu_yuv_formats;
  break;
 default:
  return ((void*)0);
 }

 for (i = 0; i < array_size; i++) {
  if (cs_sel == 130 && i >= NUM_IPU_YUV_FORMATS)
   fmt = &ipu_rgb_formats[i - NUM_IPU_YUV_FORMATS];
  else
   fmt = &array[i];

  for (j = 0; code && fmt->codes[j]; j++) {
   if (code == fmt->codes[j]) {
    ret = fmt;
    goto out;
   }
  }
 }

out:
 return ret;
}
