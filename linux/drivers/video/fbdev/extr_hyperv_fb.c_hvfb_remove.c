
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvfb_par {int update; int fb_ready; int dwork; int hvfb_panic_nb; } ;
struct hv_device {int channel; } ;
struct fb_info {struct hvfb_par* par; } ;


 int atomic_notifier_chain_unregister (int *,int *) ;
 int cancel_delayed_work_sync (int *) ;
 int framebuffer_release (struct fb_info*) ;
 struct fb_info* hv_get_drvdata (struct hv_device*) ;
 int hv_set_drvdata (struct hv_device*,int *) ;
 int hvfb_putmem (struct fb_info*) ;
 int panic_notifier_list ;
 int unregister_framebuffer (struct fb_info*) ;
 int vmbus_close (int ) ;

__attribute__((used)) static int hvfb_remove(struct hv_device *hdev)
{
 struct fb_info *info = hv_get_drvdata(hdev);
 struct hvfb_par *par = info->par;

 atomic_notifier_chain_unregister(&panic_notifier_list,
      &par->hvfb_panic_nb);

 par->update = 0;
 par->fb_ready = 0;

 unregister_framebuffer(info);
 cancel_delayed_work_sync(&par->dwork);

 vmbus_close(hdev->channel);
 hv_set_drvdata(hdev, ((void*)0));

 hvfb_putmem(info);
 framebuffer_release(info);

 return 0;
}
