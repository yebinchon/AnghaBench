
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mv_otg {int phy; scalar_t__ qwork; } ;


 int destroy_workqueue (scalar_t__) ;
 int flush_workqueue (scalar_t__) ;
 int mv_otg_disable (struct mv_otg*) ;
 struct mv_otg* platform_get_drvdata (struct platform_device*) ;
 int usb_remove_phy (int *) ;

__attribute__((used)) static int mv_otg_remove(struct platform_device *pdev)
{
 struct mv_otg *mvotg = platform_get_drvdata(pdev);

 if (mvotg->qwork) {
  flush_workqueue(mvotg->qwork);
  destroy_workqueue(mvotg->qwork);
 }

 mv_otg_disable(mvotg);

 usb_remove_phy(&mvotg->phy);

 return 0;
}
