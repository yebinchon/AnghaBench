
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hantro_dev {TYPE_1__* variant; } ;
struct TYPE_2__ {int dec_fmts; } ;


 int MEDIA_ENT_F_PROC_VIDEO_DECODER ;
 int hantro_add_func (struct hantro_dev*,int ) ;

__attribute__((used)) static int hantro_add_dec_func(struct hantro_dev *vpu)
{
 if (!vpu->variant->dec_fmts)
  return 0;

 return hantro_add_func(vpu, MEDIA_ENT_F_PROC_VIDEO_DECODER);
}
