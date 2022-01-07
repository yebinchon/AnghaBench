
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vbtn_priv {int wakeup_mode; } ;
struct device {int dummy; } ;


 struct intel_vbtn_priv* dev_get_drvdata (struct device*) ;

__attribute__((used)) static void intel_vbtn_pm_complete(struct device *dev)
{
 struct intel_vbtn_priv *priv = dev_get_drvdata(dev);

 priv->wakeup_mode = 0;
}
