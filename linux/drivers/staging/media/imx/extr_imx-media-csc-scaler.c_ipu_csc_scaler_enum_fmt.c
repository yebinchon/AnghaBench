
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_fmtdesc {int pixelformat; int index; } ;
struct file {int dummy; } ;


 int CS_SEL_ANY ;
 int imx_media_enum_format (int *,int ,int ) ;

__attribute__((used)) static int ipu_csc_scaler_enum_fmt(struct file *file, void *fh,
       struct v4l2_fmtdesc *f)
{
 u32 fourcc;
 int ret;

 ret = imx_media_enum_format(&fourcc, f->index, CS_SEL_ANY);
 if (ret)
  return ret;

 f->pixelformat = fourcc;

 return 0;
}
