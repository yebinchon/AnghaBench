
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct controller_priv {int dummy; } ;


 int anybuss_reset (struct controller_priv*,int ,int) ;
 struct controller_priv* dev_get_drvdata (struct device*) ;

__attribute__((used)) static void export_reset_0(struct device *dev, bool assert)
{
 struct controller_priv *cd = dev_get_drvdata(dev);

 anybuss_reset(cd, 0, assert);
}
