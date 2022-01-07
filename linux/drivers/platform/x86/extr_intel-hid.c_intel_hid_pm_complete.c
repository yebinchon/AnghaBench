
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_hid_priv {int wakeup_mode; } ;
struct device {int dummy; } ;


 struct intel_hid_priv* dev_get_drvdata (struct device*) ;

__attribute__((used)) static void intel_hid_pm_complete(struct device *device)
{
 struct intel_hid_priv *priv = dev_get_drvdata(device);

 priv->wakeup_mode = 0;
}
