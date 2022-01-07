
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct imx_media_pixfmt {size_t fourcc; size_t* codes; int bayer; } ;
typedef enum codespace_sel { ____Placeholder_codespace_sel } codespace_sel ;





 int EINVAL ;
 size_t NUM_MBUS_RGB_FORMATS ;
 size_t NUM_MBUS_YUV_FORMATS ;
 size_t NUM_RGB_FORMATS ;
 size_t NUM_YUV_FORMATS ;
 struct imx_media_pixfmt* rgb_formats ;
 struct imx_media_pixfmt* yuv_formats ;

__attribute__((used)) static int enum_format(u32 *fourcc, u32 *code, u32 index,
         enum codespace_sel cs_sel,
         bool allow_non_mbus,
         bool allow_bayer)
{
 const struct imx_media_pixfmt *fmt;
 u32 mbus_yuv_sz = NUM_MBUS_YUV_FORMATS;
 u32 mbus_rgb_sz = NUM_MBUS_RGB_FORMATS;
 u32 yuv_sz = NUM_YUV_FORMATS;
 u32 rgb_sz = NUM_RGB_FORMATS;

 switch (cs_sel) {
 case 128:
  if (index >= yuv_sz ||
      (!allow_non_mbus && index >= mbus_yuv_sz))
   return -EINVAL;
  fmt = &yuv_formats[index];
  break;
 case 129:
  if (index >= rgb_sz ||
      (!allow_non_mbus && index >= mbus_rgb_sz))
   return -EINVAL;
  fmt = &rgb_formats[index];
  if (!allow_bayer && fmt->bayer)
   return -EINVAL;
  break;
 case 130:
  if (!allow_non_mbus) {
   if (index >= mbus_yuv_sz) {
    index -= mbus_yuv_sz;
    if (index >= mbus_rgb_sz)
     return -EINVAL;
    fmt = &rgb_formats[index];
    if (!allow_bayer && fmt->bayer)
     return -EINVAL;
   } else {
    fmt = &yuv_formats[index];
   }
  } else {
   if (index >= yuv_sz + rgb_sz)
    return -EINVAL;
   if (index >= yuv_sz) {
    fmt = &rgb_formats[index - yuv_sz];
    if (!allow_bayer && fmt->bayer)
     return -EINVAL;
   } else {
    fmt = &yuv_formats[index];
   }
  }
  break;
 default:
  return -EINVAL;
 }

 if (fourcc)
  *fourcc = fmt->fourcc;
 if (code)
  *code = fmt->codes[0];

 return 0;
}
