
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int height; int width; int accel_flags; int activate; scalar_t__ nonstd; } ;
struct TYPE_4__ {int ypanstep; int accel; scalar_t__ ywrapstep; scalar_t__ xpanstep; scalar_t__ type_aux; int type; int id; } ;
struct TYPE_6__ {int flags; int cmap; int pseudo_palette; int * fbops; TYPE_2__ var; TYPE_1__ fix; } ;
struct cfb_info {unsigned int id; int ref_ps; int* divisors; TYPE_3__ fb; int reg_b0_lock; int pseudo_palette; } ;


 int FBINFO_DEFAULT ;
 int FBINFO_HWACCEL_YPAN ;
 int FB_ACCELF_TEXT ;
 int FB_ACCEL_IGS_CYBER2000 ;
 int FB_ACCEL_IGS_CYBER2010 ;
 int FB_ACCEL_IGS_CYBER5000 ;
 int FB_ACTIVATE_NOW ;
 int FB_TYPE_PACKED_PIXELS ;
 int GFP_KERNEL ;




 int NR_PALETTE ;
 int cyber2000fb_ops ;
 int fb_alloc_cmap (int *,int ,int ) ;
 struct cfb_info* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static struct cfb_info *cyberpro_alloc_fb_info(unsigned int id, char *name)
{
 struct cfb_info *cfb;

 cfb = kzalloc(sizeof(struct cfb_info), GFP_KERNEL);
 if (!cfb)
  return ((void*)0);


 cfb->id = id;

 if (id == 129)
  cfb->ref_ps = 40690;
 else
  cfb->ref_ps = 69842;

 cfb->divisors[0] = 1;
 cfb->divisors[1] = 2;
 cfb->divisors[2] = 4;

 if (id == 131)
  cfb->divisors[3] = 8;
 else
  cfb->divisors[3] = 6;

 strcpy(cfb->fb.fix.id, name);

 cfb->fb.fix.type = FB_TYPE_PACKED_PIXELS;
 cfb->fb.fix.type_aux = 0;
 cfb->fb.fix.xpanstep = 0;
 cfb->fb.fix.ypanstep = 1;
 cfb->fb.fix.ywrapstep = 0;

 switch (id) {
 case 128:
  cfb->fb.fix.accel = 0;
  break;

 case 131:
  cfb->fb.fix.accel = FB_ACCEL_IGS_CYBER2000;
  break;

 case 130:
  cfb->fb.fix.accel = FB_ACCEL_IGS_CYBER2010;
  break;

 case 129:
  cfb->fb.fix.accel = FB_ACCEL_IGS_CYBER5000;
  break;
 }

 cfb->fb.var.nonstd = 0;
 cfb->fb.var.activate = FB_ACTIVATE_NOW;
 cfb->fb.var.height = -1;
 cfb->fb.var.width = -1;
 cfb->fb.var.accel_flags = FB_ACCELF_TEXT;

 cfb->fb.fbops = &cyber2000fb_ops;
 cfb->fb.flags = FBINFO_DEFAULT | FBINFO_HWACCEL_YPAN;
 cfb->fb.pseudo_palette = cfb->pseudo_palette;

 spin_lock_init(&cfb->reg_b0_lock);

 fb_alloc_cmap(&cfb->fb.cmap, NR_PALETTE, 0);

 return cfb;
}
