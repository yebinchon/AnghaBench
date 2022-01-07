
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {scalar_t__ pad; int index; int code; } ;
struct v4l2_subdev {int dummy; } ;


 int CS_SEL_ANY ;
 int EINVAL ;
 scalar_t__ PRPENCVF_NUM_PADS ;
 int imx_media_enum_ipu_format (int *,int ,int ) ;

__attribute__((used)) static int prp_enum_mbus_code(struct v4l2_subdev *sd,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_mbus_code_enum *code)
{
 if (code->pad >= PRPENCVF_NUM_PADS)
  return -EINVAL;

 return imx_media_enum_ipu_format(&code->code, code->index, CS_SEL_ANY);
}
