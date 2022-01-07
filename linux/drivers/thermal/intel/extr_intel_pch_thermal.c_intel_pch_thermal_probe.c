
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_device_id {int driver_data; } ;
struct pci_dev {int dev; } ;
struct pch_thermal_device {int hw_base; int tzd; TYPE_1__* ops; struct pci_dev* pdev; } ;
struct board_info {int name; TYPE_1__* ops; } ;
typedef enum board_ids { ____Placeholder_board_ids } board_ids ;
struct TYPE_2__ {int (* hw_init ) (struct pch_thermal_device*,int*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct board_info* board_info ;
 int dev_err (int *,char*,...) ;
 struct pch_thermal_device* devm_kzalloc (int *,int,int ) ;
 int driver_name ;
 int iounmap (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_ioremap_bar (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct pch_thermal_device*) ;
 int stub1 (struct pch_thermal_device*,int*) ;
 int thermal_zone_device_register (int ,int,int ,struct pch_thermal_device*,int *,int *,int ,int ) ;
 int tzd_ops ;

__attribute__((used)) static int intel_pch_thermal_probe(struct pci_dev *pdev,
       const struct pci_device_id *id)
{
 enum board_ids board_id = id->driver_data;
 const struct board_info *bi = &board_info[board_id];
 struct pch_thermal_device *ptd;
 int err;
 int nr_trips;

 ptd = devm_kzalloc(&pdev->dev, sizeof(*ptd), GFP_KERNEL);
 if (!ptd)
  return -ENOMEM;

 ptd->ops = bi->ops;

 pci_set_drvdata(pdev, ptd);
 ptd->pdev = pdev;

 err = pci_enable_device(pdev);
 if (err) {
  dev_err(&pdev->dev, "failed to enable pci device\n");
  return err;
 }

 err = pci_request_regions(pdev, driver_name);
 if (err) {
  dev_err(&pdev->dev, "failed to request pci region\n");
  goto error_disable;
 }

 ptd->hw_base = pci_ioremap_bar(pdev, 0);
 if (!ptd->hw_base) {
  err = -ENOMEM;
  dev_err(&pdev->dev, "failed to map mem base\n");
  goto error_release;
 }

 err = ptd->ops->hw_init(ptd, &nr_trips);
 if (err)
  goto error_cleanup;

 ptd->tzd = thermal_zone_device_register(bi->name, nr_trips, 0, ptd,
      &tzd_ops, ((void*)0), 0, 0);
 if (IS_ERR(ptd->tzd)) {
  dev_err(&pdev->dev, "Failed to register thermal zone %s\n",
   bi->name);
  err = PTR_ERR(ptd->tzd);
  goto error_cleanup;
 }

 return 0;

error_cleanup:
 iounmap(ptd->hw_base);
error_release:
 pci_release_regions(pdev);
error_disable:
 pci_disable_device(pdev);
 dev_err(&pdev->dev, "pci device failed to probe\n");
 return err;
}
