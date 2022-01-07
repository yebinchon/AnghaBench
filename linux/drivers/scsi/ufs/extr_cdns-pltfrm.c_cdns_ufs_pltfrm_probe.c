
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba_variant_ops {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;


 int cdns_ufs_of_match ;
 int dev_err (struct device*,char*,int) ;
 struct of_device_id* of_match_node (int ,int ) ;
 int ufshcd_pltfrm_init (struct platform_device*,struct ufs_hba_variant_ops*) ;

__attribute__((used)) static int cdns_ufs_pltfrm_probe(struct platform_device *pdev)
{
 int err;
 const struct of_device_id *of_id;
 struct ufs_hba_variant_ops *vops;
 struct device *dev = &pdev->dev;

 of_id = of_match_node(cdns_ufs_of_match, dev->of_node);
 vops = (struct ufs_hba_variant_ops *)of_id->data;


 err = ufshcd_pltfrm_init(pdev, vops);
 if (err)
  dev_err(dev, "ufshcd_pltfrm_init() failed %d\n", err);

 return err;
}
