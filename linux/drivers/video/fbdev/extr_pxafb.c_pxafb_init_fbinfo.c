
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_char ;
typedef int u32 ;
struct pxafb_mach_info {int dummy; } ;
struct TYPE_5__ {int height; int width; int vmode; int accel_flags; int activate; scalar_t__ nonstd; } ;
struct TYPE_4__ {int ypanstep; int accel; scalar_t__ ywrapstep; scalar_t__ xpanstep; scalar_t__ type_aux; int type; int id; } ;
struct TYPE_6__ {int node; void* pseudo_palette; int flags; int * fbops; TYPE_2__ var; TYPE_1__ fix; } ;
struct pxafb_info {int disable_done; int ctrlr_lock; int task; int ctrlr_wait; int lccr0; scalar_t__ task_state; int state; TYPE_3__ fb; int clk; struct pxafb_mach_info* inf; struct device* dev; } ;
struct device {int dummy; } ;


 int C_STARTUP ;
 int ENOMEM ;
 struct pxafb_info* ERR_CAST (int ) ;
 struct pxafb_info* ERR_PTR (int ) ;
 int FBINFO_DEFAULT ;
 int FB_ACCELF_TEXT ;
 int FB_ACCEL_NONE ;
 int FB_ACTIVATE_NOW ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VMODE_NONINTERLACED ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int LCCR0_OUC ;
 int PXA_NAME ;
 int devm_clk_get (struct device*,int *) ;
 struct pxafb_info* devm_kzalloc (struct device*,int,int ) ;
 int init_completion (int *) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int pxafb_decode_mach_info (struct pxafb_info*,struct pxafb_mach_info*) ;
 int pxafb_ops ;
 scalar_t__ pxafb_overlay_supported () ;
 int pxafb_task ;
 int strcpy (int ,int ) ;

__attribute__((used)) static struct pxafb_info *pxafb_init_fbinfo(struct device *dev,
         struct pxafb_mach_info *inf)
{
 struct pxafb_info *fbi;
 void *addr;


 fbi = devm_kzalloc(dev, sizeof(struct pxafb_info) + sizeof(u32) * 16,
      GFP_KERNEL);
 if (!fbi)
  return ERR_PTR(-ENOMEM);

 fbi->dev = dev;
 fbi->inf = inf;

 fbi->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(fbi->clk))
  return ERR_CAST(fbi->clk);

 strcpy(fbi->fb.fix.id, PXA_NAME);

 fbi->fb.fix.type = FB_TYPE_PACKED_PIXELS;
 fbi->fb.fix.type_aux = 0;
 fbi->fb.fix.xpanstep = 0;
 fbi->fb.fix.ypanstep = 1;
 fbi->fb.fix.ywrapstep = 0;
 fbi->fb.fix.accel = FB_ACCEL_NONE;

 fbi->fb.var.nonstd = 0;
 fbi->fb.var.activate = FB_ACTIVATE_NOW;
 fbi->fb.var.height = -1;
 fbi->fb.var.width = -1;
 fbi->fb.var.accel_flags = FB_ACCELF_TEXT;
 fbi->fb.var.vmode = FB_VMODE_NONINTERLACED;

 fbi->fb.fbops = &pxafb_ops;
 fbi->fb.flags = FBINFO_DEFAULT;
 fbi->fb.node = -1;

 addr = fbi;
 addr = addr + sizeof(struct pxafb_info);
 fbi->fb.pseudo_palette = addr;

 fbi->state = C_STARTUP;
 fbi->task_state = (u_char)-1;

 pxafb_decode_mach_info(fbi, inf);







 init_waitqueue_head(&fbi->ctrlr_wait);
 INIT_WORK(&fbi->task, pxafb_task);
 mutex_init(&fbi->ctrlr_lock);
 init_completion(&fbi->disable_done);

 return fbi;
}
