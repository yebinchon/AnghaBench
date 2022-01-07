
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int entity; } ;
struct platform_device {int dummy; } ;
struct csi2_dev {int lock; int pllref_clk; int dphy_clk; } ;


 int clk_disable_unprepare (int ) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 struct v4l2_subdev* platform_get_drvdata (struct platform_device*) ;
 struct csi2_dev* sd_to_dev (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int csi2_remove(struct platform_device *pdev)
{
 struct v4l2_subdev *sd = platform_get_drvdata(pdev);
 struct csi2_dev *csi2 = sd_to_dev(sd);

 v4l2_async_unregister_subdev(sd);
 clk_disable_unprepare(csi2->dphy_clk);
 clk_disable_unprepare(csi2->pllref_clk);
 mutex_destroy(&csi2->lock);
 media_entity_cleanup(&sd->entity);

 return 0;
}
