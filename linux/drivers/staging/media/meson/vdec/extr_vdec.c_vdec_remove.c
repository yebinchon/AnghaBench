
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct amvdec_core {int vdev_dec; } ;


 struct amvdec_core* platform_get_drvdata (struct platform_device*) ;
 int video_unregister_device (int ) ;

__attribute__((used)) static int vdec_remove(struct platform_device *pdev)
{
 struct amvdec_core *core = platform_get_drvdata(pdev);

 video_unregister_device(core->vdev_dec);

 return 0;
}
