
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otg_device {int id; scalar_t__ vbus; } ;


 int OMAP_OTG_ASESSVLD ;
 int OMAP_OTG_BSESSEND ;
 int OMAP_OTG_BSESSVLD ;
 int OMAP_OTG_ID ;
 int omap_otg_ctrl (struct otg_device*,int) ;

__attribute__((used)) static void omap_otg_set_mode(struct otg_device *otg_dev)
{
 if (!otg_dev->id && otg_dev->vbus)

  omap_otg_ctrl(otg_dev, OMAP_OTG_ID | OMAP_OTG_BSESSVLD);
 else if (otg_dev->vbus)

  omap_otg_ctrl(otg_dev, OMAP_OTG_ASESSVLD);
 else if (!otg_dev->id)

  omap_otg_ctrl(otg_dev, OMAP_OTG_ID | OMAP_OTG_BSESSEND);
}
