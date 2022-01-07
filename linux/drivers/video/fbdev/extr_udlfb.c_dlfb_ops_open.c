
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dev; struct fb_deferred_io* fbdefio; struct dlfb_data* par; } ;
struct fb_deferred_io {int deferred_io; int delay; } ;
struct dlfb_data {int fb_count; scalar_t__ virtualized; } ;


 int DL_DEFIO_WRITE_DELAY ;
 int EBUSY ;
 int ENODEV ;
 int GFP_KERNEL ;
 int console ;
 int dev_dbg (int ,char*,int,struct fb_info*,int ) ;
 int dlfb_dpy_deferred_io ;
 int fb_deferred_io_init (struct fb_info*) ;
 scalar_t__ fb_defio ;
 struct fb_deferred_io* kzalloc (int,int ) ;

__attribute__((used)) static int dlfb_ops_open(struct fb_info *info, int user)
{
 struct dlfb_data *dlfb = info->par;






 if ((user == 0) && (!console))
  return -EBUSY;


 if (dlfb->virtualized)
  return -ENODEV;

 dlfb->fb_count++;

 if (fb_defio && (info->fbdefio == ((void*)0))) {


  struct fb_deferred_io *fbdefio;

  fbdefio = kzalloc(sizeof(struct fb_deferred_io), GFP_KERNEL);

  if (fbdefio) {
   fbdefio->delay = DL_DEFIO_WRITE_DELAY;
   fbdefio->deferred_io = dlfb_dpy_deferred_io;
  }

  info->fbdefio = fbdefio;
  fb_deferred_io_init(info);
 }

 dev_dbg(info->dev, "open, user=%d fb_info=%p count=%d\n",
  user, info, dlfb->fb_count);

 return 0;
}
