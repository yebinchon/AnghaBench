
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hantro_func {int vdev; } ;
struct hantro_dev {struct hantro_func* decoder; struct hantro_func* encoder; } ;


 unsigned int MEDIA_ENT_F_PROC_VIDEO_ENCODER ;
 int hantro_detach_func (struct hantro_func*) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static void hantro_remove_func(struct hantro_dev *vpu,
          unsigned int funcid)
{
 struct hantro_func *func;

 if (funcid == MEDIA_ENT_F_PROC_VIDEO_ENCODER)
  func = vpu->encoder;
 else
  func = vpu->decoder;

 if (!func)
  return;

 hantro_detach_func(func);
 video_unregister_device(&func->vdev);
}
