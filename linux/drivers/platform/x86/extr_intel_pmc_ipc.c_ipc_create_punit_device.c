
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device_info {int id; int num_res; int res; int name; int parent; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct platform_device* punit_dev; int punit_res_count; int dev; } ;


 scalar_t__ IS_ERR (struct platform_device*) ;
 int PTR_ERR (struct platform_device*) ;
 int PUNIT_DEVICE_NAME ;
 TYPE_1__ ipcdev ;
 struct platform_device* platform_device_register_full (struct platform_device_info const*) ;
 int punit_res_array ;

__attribute__((used)) static int ipc_create_punit_device(void)
{
 struct platform_device *pdev;
 const struct platform_device_info pdevinfo = {
  .parent = ipcdev.dev,
  .name = PUNIT_DEVICE_NAME,
  .id = -1,
  .res = punit_res_array,
  .num_res = ipcdev.punit_res_count,
  };

 pdev = platform_device_register_full(&pdevinfo);
 if (IS_ERR(pdev))
  return PTR_ERR(pdev);

 ipcdev.punit_dev = pdev;

 return 0;
}
