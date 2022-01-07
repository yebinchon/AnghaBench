
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {scalar_t__ transfer_buffer; } ;
struct fb_info {int var; int dev; struct dlfb_data* par; } ;
struct dlfb_data {int blank_mode; } ;


 int FB_BLANK_POWERDOWN ;
 int dev_dbg (int ,char*,int,int) ;
 char* dlfb_blanking (char*,int) ;
 char* dlfb_dummy_render (char*) ;
 struct urb* dlfb_get_urb (struct dlfb_data*) ;
 int dlfb_set_video_mode (struct dlfb_data*,int *) ;
 int dlfb_submit_urb (struct dlfb_data*,struct urb*,int) ;
 char* dlfb_vidreg_lock (char*) ;
 char* dlfb_vidreg_unlock (char*) ;

__attribute__((used)) static int dlfb_ops_blank(int blank_mode, struct fb_info *info)
{
 struct dlfb_data *dlfb = info->par;
 char *bufptr;
 struct urb *urb;

 dev_dbg(info->dev, "blank, mode %d --> %d\n",
  dlfb->blank_mode, blank_mode);

 if ((dlfb->blank_mode == FB_BLANK_POWERDOWN) &&
     (blank_mode != FB_BLANK_POWERDOWN)) {


  dlfb_set_video_mode(dlfb, &info->var);
 }

 urb = dlfb_get_urb(dlfb);
 if (!urb)
  return 0;

 bufptr = (char *) urb->transfer_buffer;
 bufptr = dlfb_vidreg_lock(bufptr);
 bufptr = dlfb_blanking(bufptr, blank_mode);
 bufptr = dlfb_vidreg_unlock(bufptr);


 bufptr = dlfb_dummy_render(bufptr);

 dlfb_submit_urb(dlfb, urb, bufptr -
   (char *) urb->transfer_buffer);

 dlfb->blank_mode = blank_mode;

 return 0;
}
