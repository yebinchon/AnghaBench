
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int name; } ;
struct hantro_dev {int dev; int clocks; TYPE_1__* variant; int v4l2_dev; int m2m_dev; int mdev; } ;
struct TYPE_2__ {int num_clocks; } ;


 int clk_bulk_unprepare (int ,int ) ;
 int hantro_remove_dec_func (struct hantro_dev*) ;
 int hantro_remove_enc_func (struct hantro_dev*) ;
 int media_device_cleanup (int *) ;
 int media_device_unregister (int *) ;
 struct hantro_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_dont_use_autosuspend (int ) ;
 int v4l2_device_unregister (int *) ;
 int v4l2_info (int *,char*,int ) ;
 int v4l2_m2m_release (int ) ;

__attribute__((used)) static int hantro_remove(struct platform_device *pdev)
{
 struct hantro_dev *vpu = platform_get_drvdata(pdev);

 v4l2_info(&vpu->v4l2_dev, "Removing %s\n", pdev->name);

 media_device_unregister(&vpu->mdev);
 hantro_remove_dec_func(vpu);
 hantro_remove_enc_func(vpu);
 media_device_cleanup(&vpu->mdev);
 v4l2_m2m_release(vpu->m2m_dev);
 v4l2_device_unregister(&vpu->v4l2_dev);
 clk_bulk_unprepare(vpu->variant->num_clocks, vpu->clocks);
 pm_runtime_dont_use_autosuspend(vpu->dev);
 pm_runtime_disable(vpu->dev);
 return 0;
}
