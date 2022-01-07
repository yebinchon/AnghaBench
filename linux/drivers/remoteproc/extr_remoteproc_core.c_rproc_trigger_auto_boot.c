
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {int dev; int firmware; } ;


 int FW_ACTION_HOTPLUG ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int dev_err (int *,char*,int) ;
 int request_firmware_nowait (int ,int ,int ,int *,int ,struct rproc*,int ) ;
 int rproc_auto_boot_callback ;

__attribute__((used)) static int rproc_trigger_auto_boot(struct rproc *rproc)
{
 int ret;





 ret = request_firmware_nowait(THIS_MODULE, FW_ACTION_HOTPLUG,
          rproc->firmware, &rproc->dev, GFP_KERNEL,
          rproc, rproc_auto_boot_callback);
 if (ret < 0)
  dev_err(&rproc->dev, "request_firmware_nowait err: %d\n", ret);

 return ret;
}
