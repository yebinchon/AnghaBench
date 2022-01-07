
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wkup_m3_ipc {int rproc; int sync_complete; struct device* dev; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*) ;
 int do_exit (int ) ;
 int init_completion (int *) ;
 int rproc_boot (int ) ;

__attribute__((used)) static void wkup_m3_rproc_boot_thread(struct wkup_m3_ipc *m3_ipc)
{
 struct device *dev = m3_ipc->dev;
 int ret;

 init_completion(&m3_ipc->sync_complete);

 ret = rproc_boot(m3_ipc->rproc);
 if (ret)
  dev_err(dev, "rproc_boot failed\n");

 do_exit(0);
}
