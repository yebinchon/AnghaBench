
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_vde_h264_frame {int frame_num; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int dev_err (struct device*,char*,int) ;

__attribute__((used)) static int tegra_vde_validate_frame(struct device *dev,
        struct tegra_vde_h264_frame *frame)
{
 if (frame->frame_num > 0x7FFFFF) {
  dev_err(dev, "Bad frame_num %u\n", frame->frame_num);
  return -EINVAL;
 }

 return 0;
}
