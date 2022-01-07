
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum imgu_abi_frame_format { ____Placeholder_imgu_abi_frame_format } imgu_abi_frame_format ;
 unsigned int IMGU_ABI_OSYS_FORMAT_NV12 ;
 unsigned int IMGU_ABI_OSYS_FORMAT_NV16 ;
 unsigned int IMGU_ABI_OSYS_FORMAT_NV21 ;
 unsigned int IMGU_ABI_OSYS_FORMAT_YUV420 ;
 unsigned int IMGU_ABI_OSYS_FORMAT_YV12 ;
 unsigned int IMGU_ABI_OSYS_TILING_NONE ;
 unsigned int IMGU_ABI_OSYS_TILING_Y ;

__attribute__((used)) static void imgu_css_osys_set_format(enum imgu_abi_frame_format host_format,
         unsigned int *osys_format,
         unsigned int *osys_tiling)
{
 *osys_format = IMGU_ABI_OSYS_FORMAT_YUV420;
 *osys_tiling = IMGU_ABI_OSYS_TILING_NONE;

 switch (host_format) {
 case 129:
  *osys_format = IMGU_ABI_OSYS_FORMAT_YUV420;
  break;
 case 128:
  *osys_format = IMGU_ABI_OSYS_FORMAT_YV12;
  break;
 case 133:
  *osys_format = IMGU_ABI_OSYS_FORMAT_NV12;
  break;
 case 131:
  *osys_format = IMGU_ABI_OSYS_FORMAT_NV16;
  break;
 case 130:
  *osys_format = IMGU_ABI_OSYS_FORMAT_NV21;
  break;
 case 132:
  *osys_format = IMGU_ABI_OSYS_FORMAT_NV12;
  *osys_tiling = IMGU_ABI_OSYS_TILING_Y;
  break;
 default:

  break;
 }
}
