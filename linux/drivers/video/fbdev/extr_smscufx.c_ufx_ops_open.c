
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufx_data {int fb_count; int kref; scalar_t__ virtualized; } ;
struct fb_info {int node; struct fb_deferred_io* fbdefio; struct ufx_data* par; } ;
struct fb_deferred_io {int deferred_io; int delay; } ;


 int EBUSY ;
 int ENODEV ;
 int GFP_KERNEL ;
 int UFX_DEFIO_WRITE_DELAY ;
 int console ;
 int fb_deferred_io_init (struct fb_info*) ;
 scalar_t__ fb_defio ;
 int kref_get (int *) ;
 struct fb_deferred_io* kzalloc (int,int ) ;
 int pr_debug (char*,int ,int,struct fb_info*,int ) ;
 int ufx_dpy_deferred_io ;

__attribute__((used)) static int ufx_ops_open(struct fb_info *info, int user)
{
 struct ufx_data *dev = info->par;




 if (user == 0 && !console)
  return -EBUSY;


 if (dev->virtualized)
  return -ENODEV;

 dev->fb_count++;

 kref_get(&dev->kref);

 if (fb_defio && (info->fbdefio == ((void*)0))) {


  struct fb_deferred_io *fbdefio;

  fbdefio = kzalloc(sizeof(*fbdefio), GFP_KERNEL);
  if (fbdefio) {
   fbdefio->delay = UFX_DEFIO_WRITE_DELAY;
   fbdefio->deferred_io = ufx_dpy_deferred_io;
  }

  info->fbdefio = fbdefio;
  fb_deferred_io_init(info);
 }

 pr_debug("open /dev/fb%d user=%d fb_info=%p count=%d",
  info->node, user, info, dev->fb_count);

 return 0;
}
