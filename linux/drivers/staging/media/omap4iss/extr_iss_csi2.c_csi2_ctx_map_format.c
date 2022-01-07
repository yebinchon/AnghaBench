
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct v4l2_mbus_framefmt {int code; } ;
struct iss_csi2_device {int output; size_t dpcm_decompress; scalar_t__ frame_skip; struct v4l2_mbus_framefmt* formats; } ;


 int CSI2_OUTPUT_IPIPEIF ;
 int CSI2_OUTPUT_MEMORY ;
 size_t CSI2_PAD_SINK ;
 int CSI2_PIX_FMT_OTHERS ;
 int WARN (int,char*,int) ;
 int *** __csi2_fmt_map ;

__attribute__((used)) static u16 csi2_ctx_map_format(struct iss_csi2_device *csi2)
{
 const struct v4l2_mbus_framefmt *fmt = &csi2->formats[CSI2_PAD_SINK];
 int fmtidx, destidx;

 switch (fmt->code) {
 case 135:
 case 132:
 case 141:
 case 138:
  fmtidx = 0;
  break;
 case 134:
 case 131:
 case 140:
 case 137:
  fmtidx = 1;
  break;
 case 139:
 case 136:
 case 133:
 case 130:
  fmtidx = 2;
  break;
 case 129:
 case 128:
  fmtidx = 3;
  break;
 default:
  WARN(1, "CSI2: pixel format %08x unsupported!\n",
       fmt->code);
  return 0;
 }

 if (!(csi2->output & CSI2_OUTPUT_IPIPEIF) &&
     !(csi2->output & CSI2_OUTPUT_MEMORY)) {

  return CSI2_PIX_FMT_OTHERS;
 }




 destidx = csi2->frame_skip ? 0 : !!(csi2->output & CSI2_OUTPUT_IPIPEIF);

 return __csi2_fmt_map[fmtidx][destidx][csi2->dpcm_decompress];
}
