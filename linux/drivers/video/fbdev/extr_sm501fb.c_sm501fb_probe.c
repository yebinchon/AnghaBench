
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sm501fb_info {int ** fb; int * pdata; scalar_t__ edid_data; struct device* dev; } ;
struct sm501_platdata {int * fb; } ;
struct device {TYPE_1__* parent; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; struct sm501_platdata* platform_data; } ;


 int EDID_LENGTH ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t HEAD_CRT ;
 size_t HEAD_PANEL ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 int driver_name_crt ;
 int driver_name_pnl ;
 int fb_mode ;
 int framebuffer_release (int *) ;
 int kfree (struct sm501fb_info*) ;
 scalar_t__ kmemdup (int const*,int,int ) ;
 struct sm501fb_info* kzalloc (int,int ) ;
 void* of_get_property (struct device_node*,char*,int*) ;
 int platform_set_drvdata (struct platform_device*,struct sm501fb_info*) ;
 int sm501_free_init_fb (struct sm501fb_info*,size_t) ;
 int sm501fb_def_pdata ;
 int sm501fb_probe_one (struct sm501fb_info*,size_t) ;
 int sm501fb_start (struct sm501fb_info*,struct platform_device*) ;
 int sm501fb_start_one (struct sm501fb_info*,size_t,int ) ;
 int sm501fb_stop (struct sm501fb_info*) ;
 int strcpy (int ,char const*) ;
 int unregister_framebuffer (int *) ;

__attribute__((used)) static int sm501fb_probe(struct platform_device *pdev)
{
 struct sm501fb_info *info;
 struct device *dev = &pdev->dev;
 int ret;


 info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (!info) {
  dev_err(dev, "failed to allocate state\n");
  return -ENOMEM;
 }

 info->dev = dev = &pdev->dev;
 platform_set_drvdata(pdev, info);

 if (dev->parent->platform_data) {
  struct sm501_platdata *pd = dev->parent->platform_data;
  info->pdata = pd->fb;
 }

 if (info->pdata == ((void*)0)) {
  int found = 0;
  if (!found) {
   dev_info(dev, "using default configuration data\n");
   info->pdata = &sm501fb_def_pdata;
  }
 }



 ret = sm501fb_probe_one(info, HEAD_CRT);
 if (ret < 0) {
  dev_err(dev, "failed to probe CRT\n");
  goto err_alloc;
 }

 ret = sm501fb_probe_one(info, HEAD_PANEL);
 if (ret < 0) {
  dev_err(dev, "failed to probe PANEL\n");
  goto err_probed_crt;
 }

 if (info->fb[HEAD_PANEL] == ((void*)0) &&
     info->fb[HEAD_CRT] == ((void*)0)) {
  dev_err(dev, "no framebuffers found\n");
  ret = -ENODEV;
  goto err_alloc;
 }



 ret = sm501fb_start(info, pdev);
 if (ret) {
  dev_err(dev, "cannot initialise SM501\n");
  goto err_probed_panel;
 }

 ret = sm501fb_start_one(info, HEAD_CRT, driver_name_crt);
 if (ret) {
  dev_err(dev, "failed to start CRT\n");
  goto err_started;
 }

 ret = sm501fb_start_one(info, HEAD_PANEL, driver_name_pnl);
 if (ret) {
  dev_err(dev, "failed to start Panel\n");
  goto err_started_crt;
 }


 return 0;

err_started_crt:
 unregister_framebuffer(info->fb[HEAD_CRT]);
 sm501_free_init_fb(info, HEAD_CRT);

err_started:
 sm501fb_stop(info);

err_probed_panel:
 framebuffer_release(info->fb[HEAD_PANEL]);

err_probed_crt:
 framebuffer_release(info->fb[HEAD_CRT]);

err_alloc:
 kfree(info);

 return ret;
}
