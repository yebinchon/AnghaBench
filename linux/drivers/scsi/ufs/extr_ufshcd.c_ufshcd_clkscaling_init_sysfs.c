
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* name; int mode; } ;
struct TYPE_6__ {TYPE_2__ attr; int store; int show; } ;
struct TYPE_4__ {TYPE_3__ enable_attr; } ;
struct ufs_hba {int dev; TYPE_1__ clk_scaling; } ;


 int dev_err (int ,char*) ;
 scalar_t__ device_create_file (int ,TYPE_3__*) ;
 int sysfs_attr_init (TYPE_2__*) ;
 int ufshcd_clkscale_enable_show ;
 int ufshcd_clkscale_enable_store ;

__attribute__((used)) static void ufshcd_clkscaling_init_sysfs(struct ufs_hba *hba)
{
 hba->clk_scaling.enable_attr.show = ufshcd_clkscale_enable_show;
 hba->clk_scaling.enable_attr.store = ufshcd_clkscale_enable_store;
 sysfs_attr_init(&hba->clk_scaling.enable_attr.attr);
 hba->clk_scaling.enable_attr.attr.name = "clkscale_enable";
 hba->clk_scaling.enable_attr.attr.mode = 0644;
 if (device_create_file(hba->dev, &hba->clk_scaling.enable_attr))
  dev_err(hba->dev, "Failed to create sysfs for clkscale_enable\n");
}
