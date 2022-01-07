
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {int write; int * dev; } ;
struct nvmem_reboot_mode {TYPE_1__ reboot; int cell; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 struct nvmem_reboot_mode* devm_kzalloc (int *,int,int ) ;
 int devm_nvmem_cell_get (int *,char*) ;
 int devm_reboot_mode_register (int *,TYPE_1__*) ;
 int nvmem_reboot_mode_write ;

__attribute__((used)) static int nvmem_reboot_mode_probe(struct platform_device *pdev)
{
 int ret;
 struct nvmem_reboot_mode *nvmem_rbm;

 nvmem_rbm = devm_kzalloc(&pdev->dev, sizeof(*nvmem_rbm), GFP_KERNEL);
 if (!nvmem_rbm)
  return -ENOMEM;

 nvmem_rbm->reboot.dev = &pdev->dev;
 nvmem_rbm->reboot.write = nvmem_reboot_mode_write;

 nvmem_rbm->cell = devm_nvmem_cell_get(&pdev->dev, "reboot-mode");
 if (IS_ERR(nvmem_rbm->cell)) {
  dev_err(&pdev->dev, "failed to get the nvmem cell reboot-mode\n");
  return PTR_ERR(nvmem_rbm->cell);
 }

 ret = devm_reboot_mode_register(&pdev->dev, &nvmem_rbm->reboot);
 if (ret)
  dev_err(&pdev->dev, "can't register reboot mode\n");

 return ret;
}
