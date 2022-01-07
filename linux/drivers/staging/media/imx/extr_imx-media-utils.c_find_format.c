
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx_media_pixfmt {int dummy; } ;
typedef enum codespace_sel { ____Placeholder_codespace_sel } codespace_sel ;





 int NUM_RGB_FORMATS ;
 int NUM_YUV_FORMATS ;
 struct imx_media_pixfmt const* __find_format (int ,int ,int,int,int ,int ) ;
 int rgb_formats ;
 int yuv_formats ;

__attribute__((used)) static const struct imx_media_pixfmt *find_format(u32 fourcc,
        u32 code,
        enum codespace_sel cs_sel,
        bool allow_non_mbus,
        bool allow_bayer)
{
 const struct imx_media_pixfmt *ret;

 switch (cs_sel) {
 case 128:
  return __find_format(fourcc, code, allow_non_mbus, allow_bayer,
         yuv_formats, NUM_YUV_FORMATS);
 case 129:
  return __find_format(fourcc, code, allow_non_mbus, allow_bayer,
         rgb_formats, NUM_RGB_FORMATS);
 case 130:
  ret = __find_format(fourcc, code, allow_non_mbus, allow_bayer,
        yuv_formats, NUM_YUV_FORMATS);
  if (ret)
   return ret;
  return __find_format(fourcc, code, allow_non_mbus, allow_bayer,
         rgb_formats, NUM_RGB_FORMATS);
 default:
  return ((void*)0);
 }
}
