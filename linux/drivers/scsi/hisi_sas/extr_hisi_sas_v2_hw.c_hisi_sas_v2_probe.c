
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int EPROBE_DEFER ;
 int dev_err (int *,char*) ;
 int hisi_sas_probe (struct platform_device*,int *) ;
 int hisi_sas_v2_hw ;
 int platform_get_irq (struct platform_device*,int ) ;

__attribute__((used)) static int hisi_sas_v2_probe(struct platform_device *pdev)
{




 int ret = platform_get_irq(pdev, 0);

 if (ret < 0) {
  if (ret != -EPROBE_DEFER)
   dev_err(&pdev->dev, "cannot obtain irq\n");
  return ret;
 }

 return hisi_sas_probe(pdev, &hisi_sas_v2_hw);
}
