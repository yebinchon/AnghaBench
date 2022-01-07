
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hantro_dev {int dummy; } ;


 int MEDIA_ENT_F_PROC_VIDEO_DECODER ;
 int hantro_remove_func (struct hantro_dev*,int ) ;

__attribute__((used)) static void hantro_remove_dec_func(struct hantro_dev *vpu)
{
 hantro_remove_func(vpu, MEDIA_ENT_F_PROC_VIDEO_DECODER);
}
