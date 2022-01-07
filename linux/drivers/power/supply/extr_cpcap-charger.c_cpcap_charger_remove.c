
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct cpcap_charger_ddata {int detect_work; int vbus_work; int dev; int active; } ;


 int atomic_set (int *,int ) ;
 int cancel_delayed_work_sync (int *) ;
 int cpcap_charger_set_state (struct cpcap_charger_ddata*,int ,int ,int ) ;
 int dev_warn (int ,char*,int) ;
 int omap_usb2_set_comparator (int *) ;
 struct cpcap_charger_ddata* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int cpcap_charger_remove(struct platform_device *pdev)
{
 struct cpcap_charger_ddata *ddata = platform_get_drvdata(pdev);
 int error;

 atomic_set(&ddata->active, 0);
 error = omap_usb2_set_comparator(((void*)0));
 if (error)
  dev_warn(ddata->dev, "could not clear USB comparator: %i\n",
    error);

 error = cpcap_charger_set_state(ddata, 0, 0, 0);
 if (error)
  dev_warn(ddata->dev, "could not clear charger: %i\n",
    error);
 cancel_delayed_work_sync(&ddata->vbus_work);
 cancel_delayed_work_sync(&ddata->detect_work);

 return 0;
}
