
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {int phy; int dev_timer; struct device* controller; } ;
struct dsps_glue {int dbgfs_root; } ;
struct device {int parent; } ;


 int debugfs_remove_recursive (int ) ;
 int del_timer_sync (int *) ;
 struct dsps_glue* dev_get_drvdata (int ) ;
 int phy_exit (int ) ;
 int phy_power_off (int ) ;

__attribute__((used)) static int dsps_musb_exit(struct musb *musb)
{
 struct device *dev = musb->controller;
 struct dsps_glue *glue = dev_get_drvdata(dev->parent);

 del_timer_sync(&musb->dev_timer);
 phy_power_off(musb->phy);
 phy_exit(musb->phy);
 debugfs_remove_recursive(glue->dbgfs_root);

 return 0;
}
