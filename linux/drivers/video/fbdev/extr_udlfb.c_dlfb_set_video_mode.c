
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {scalar_t__ transfer_buffer; } ;
struct fb_var_screeninfo {int dummy; } ;
struct dlfb_data {int blank_mode; TYPE_2__* info; int usb_active; } ;
struct TYPE_3__ {int smem_len; } ;
struct TYPE_4__ {TYPE_1__ fix; } ;


 int ENOMEM ;
 int EPERM ;
 int FB_BLANK_UNBLANK ;
 int atomic_read (int *) ;
 char* dlfb_blanking (char*,int ) ;
 struct urb* dlfb_get_urb (struct dlfb_data*) ;
 char* dlfb_set_base16bpp (char*,int ) ;
 char* dlfb_set_base8bpp (char*,int ) ;
 char* dlfb_set_color_depth (char*,int) ;
 char* dlfb_set_vid_cmds (char*,struct fb_var_screeninfo*) ;
 int dlfb_submit_urb (struct dlfb_data*,struct urb*,int) ;
 char* dlfb_vidreg_lock (char*) ;
 char* dlfb_vidreg_unlock (char*) ;

__attribute__((used)) static int dlfb_set_video_mode(struct dlfb_data *dlfb,
    struct fb_var_screeninfo *var)
{
 char *buf;
 char *wrptr;
 int retval;
 int writesize;
 struct urb *urb;

 if (!atomic_read(&dlfb->usb_active))
  return -EPERM;

 urb = dlfb_get_urb(dlfb);
 if (!urb)
  return -ENOMEM;

 buf = (char *) urb->transfer_buffer;






 wrptr = dlfb_vidreg_lock(buf);
 wrptr = dlfb_set_color_depth(wrptr, 0x00);

 wrptr = dlfb_set_base16bpp(wrptr, 0);

 wrptr = dlfb_set_base8bpp(wrptr, dlfb->info->fix.smem_len);

 wrptr = dlfb_set_vid_cmds(wrptr, var);
 wrptr = dlfb_blanking(wrptr, FB_BLANK_UNBLANK);
 wrptr = dlfb_vidreg_unlock(wrptr);

 writesize = wrptr - buf;

 retval = dlfb_submit_urb(dlfb, urb, writesize);

 dlfb->blank_mode = FB_BLANK_UNBLANK;

 return retval;
}
