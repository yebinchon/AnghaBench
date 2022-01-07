
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {char* name; int mode; } ;
struct TYPE_8__ {TYPE_3__ attr; int store; int show; } ;
struct TYPE_6__ {int delay_ms; int is_enabled; TYPE_4__ enable_attr; TYPE_4__ delay_attr; int clk_gating_workq; int ungate_work; int gate_work; } ;
struct ufs_hba {int dev; TYPE_2__ clk_gating; TYPE_1__* host; } ;
struct TYPE_5__ {int host_no; } ;


 int ARRAY_SIZE (char*) ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int WQ_MEM_RECLAIM ;
 int alloc_ordered_workqueue (char*,int ) ;
 int dev_err (int ,char*) ;
 scalar_t__ device_create_file (int ,TYPE_4__*) ;
 int snprintf (char*,int ,char*,int) ;
 int sysfs_attr_init (TYPE_3__*) ;
 int ufshcd_clkgate_delay_show ;
 int ufshcd_clkgate_delay_store ;
 int ufshcd_clkgate_enable_show ;
 int ufshcd_clkgate_enable_store ;
 int ufshcd_gate_work ;
 int ufshcd_is_clkgating_allowed (struct ufs_hba*) ;
 int ufshcd_ungate_work ;

__attribute__((used)) static void ufshcd_init_clk_gating(struct ufs_hba *hba)
{
 char wq_name[sizeof("ufs_clk_gating_00")];

 if (!ufshcd_is_clkgating_allowed(hba))
  return;

 hba->clk_gating.delay_ms = 150;
 INIT_DELAYED_WORK(&hba->clk_gating.gate_work, ufshcd_gate_work);
 INIT_WORK(&hba->clk_gating.ungate_work, ufshcd_ungate_work);

 snprintf(wq_name, ARRAY_SIZE(wq_name), "ufs_clk_gating_%d",
   hba->host->host_no);
 hba->clk_gating.clk_gating_workq = alloc_ordered_workqueue(wq_name,
          WQ_MEM_RECLAIM);

 hba->clk_gating.is_enabled = 1;

 hba->clk_gating.delay_attr.show = ufshcd_clkgate_delay_show;
 hba->clk_gating.delay_attr.store = ufshcd_clkgate_delay_store;
 sysfs_attr_init(&hba->clk_gating.delay_attr.attr);
 hba->clk_gating.delay_attr.attr.name = "clkgate_delay_ms";
 hba->clk_gating.delay_attr.attr.mode = 0644;
 if (device_create_file(hba->dev, &hba->clk_gating.delay_attr))
  dev_err(hba->dev, "Failed to create sysfs for clkgate_delay\n");

 hba->clk_gating.enable_attr.show = ufshcd_clkgate_enable_show;
 hba->clk_gating.enable_attr.store = ufshcd_clkgate_enable_store;
 sysfs_attr_init(&hba->clk_gating.enable_attr.attr);
 hba->clk_gating.enable_attr.attr.name = "clkgate_enable";
 hba->clk_gating.enable_attr.attr.mode = 0644;
 if (device_create_file(hba->dev, &hba->clk_gating.enable_attr))
  dev_err(hba->dev, "Failed to create sysfs for clkgate_enable\n");
}
