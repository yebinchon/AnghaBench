
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
typedef enum codespace_sel { ____Placeholder_codespace_sel } codespace_sel ;
struct TYPE_4__ {size_t* codes; } ;
struct TYPE_3__ {size_t* codes; } ;





 int EINVAL ;
 size_t NUM_IPU_RGB_FORMATS ;
 size_t NUM_IPU_YUV_FORMATS ;
 TYPE_2__* ipu_rgb_formats ;
 TYPE_1__* ipu_yuv_formats ;

int imx_media_enum_ipu_format(u32 *code, u32 index, enum codespace_sel cs_sel)
{
 switch (cs_sel) {
 case 128:
  if (index >= NUM_IPU_YUV_FORMATS)
   return -EINVAL;
  *code = ipu_yuv_formats[index].codes[0];
  break;
 case 129:
  if (index >= NUM_IPU_RGB_FORMATS)
   return -EINVAL;
  *code = ipu_rgb_formats[index].codes[0];
  break;
 case 130:
  if (index >= NUM_IPU_YUV_FORMATS + NUM_IPU_RGB_FORMATS)
   return -EINVAL;
  if (index >= NUM_IPU_YUV_FORMATS) {
   index -= NUM_IPU_YUV_FORMATS;
   *code = ipu_rgb_formats[index].codes[0];
  } else {
   *code = ipu_yuv_formats[index].codes[0];
  }
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
