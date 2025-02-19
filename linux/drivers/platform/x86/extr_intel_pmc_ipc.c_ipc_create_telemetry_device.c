
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device_info {int id; int num_res; struct resource* res; int name; int parent; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct platform_device* telemetry_dev; scalar_t__ telem_pmc_ssram_size; scalar_t__ telem_pmc_ssram_base; scalar_t__ telem_punit_ssram_size; scalar_t__ telem_punit_ssram_base; int dev; } ;


 int ARRAY_SIZE (struct resource*) ;
 scalar_t__ IS_ERR (struct platform_device*) ;
 int PTR_ERR (struct platform_device*) ;
 int TELEMETRY_DEVICE_NAME ;
 int TELEMETRY_RESOURCE_PMC_SSRAM ;
 int TELEMETRY_RESOURCE_PUNIT_SSRAM ;
 TYPE_1__ ipcdev ;
 struct platform_device* platform_device_register_full (struct platform_device_info const*) ;
 struct resource* telemetry_res ;

__attribute__((used)) static int ipc_create_telemetry_device(void)
{
 struct platform_device *pdev;
 struct resource *res;
 const struct platform_device_info pdevinfo = {
  .parent = ipcdev.dev,
  .name = TELEMETRY_DEVICE_NAME,
  .id = -1,
  .res = telemetry_res,
  .num_res = ARRAY_SIZE(telemetry_res),
  };

 res = telemetry_res + TELEMETRY_RESOURCE_PUNIT_SSRAM;
 res->start = ipcdev.telem_punit_ssram_base;
 res->end = res->start + ipcdev.telem_punit_ssram_size - 1;

 res = telemetry_res + TELEMETRY_RESOURCE_PMC_SSRAM;
 res->start = ipcdev.telem_pmc_ssram_base;
 res->end = res->start + ipcdev.telem_pmc_ssram_size - 1;

 pdev = platform_device_register_full(&pdevinfo);
 if (IS_ERR(pdev))
  return PTR_ERR(pdev);

 ipcdev.telemetry_dev = pdev;

 return 0;
}
