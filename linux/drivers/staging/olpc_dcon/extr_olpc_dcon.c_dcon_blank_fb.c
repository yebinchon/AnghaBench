
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dcon_priv {int ignore_fb_events; TYPE_1__* client; int fbinfo; } ;
struct TYPE_2__ {int dev; } ;


 int FB_BLANK_POWERDOWN ;
 int FB_BLANK_UNBLANK ;
 int console_lock () ;
 int console_unlock () ;
 int dev_err (int *,char*,char*) ;
 int fb_blank (int ,int ) ;
 int lock_fb_info (int ) ;
 int unlock_fb_info (int ) ;

__attribute__((used)) static bool dcon_blank_fb(struct dcon_priv *dcon, bool blank)
{
 int err;

 console_lock();
 lock_fb_info(dcon->fbinfo);

 dcon->ignore_fb_events = 1;
 err = fb_blank(dcon->fbinfo,
         blank ? FB_BLANK_POWERDOWN : FB_BLANK_UNBLANK);
 dcon->ignore_fb_events = 0;
 unlock_fb_info(dcon->fbinfo);
 console_unlock();

 if (err) {
  dev_err(&dcon->client->dev, "couldn't %sblank framebuffer\n",
   blank ? "" : "un");
  return 0;
 }
 return 1;
}
