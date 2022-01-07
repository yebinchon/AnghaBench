
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct tga_par {int tga_type; scalar_t__ tga_regs_base; scalar_t__ tga_fb_base; int dev; } ;
struct TYPE_9__ {int length; scalar_t__ offset; } ;
struct TYPE_8__ {int length; int offset; } ;
struct TYPE_7__ {int length; int offset; } ;
struct TYPE_10__ {TYPE_4__ blue; TYPE_3__ green; TYPE_2__ red; } ;
struct TYPE_6__ {size_t smem_start; unsigned int smem_len; size_t mmio_start; int mmio_len; int accel; scalar_t__ ywrapstep; scalar_t__ ypanstep; scalar_t__ xpanstep; int visual; scalar_t__ type_aux; int type; int id; } ;
struct fb_info {TYPE_5__ var; TYPE_1__ fix; scalar_t__ par; } ;


 int FB_ACCEL_DEC_TGA ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VISUAL_DIRECTCOLOR ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int TGA_BUS_TC (int ) ;



 int dev_is_pci (int ) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static void
tgafb_init_fix(struct fb_info *info)
{
 struct tga_par *par = (struct tga_par *)info->par;
 int tga_bus_pci = dev_is_pci(par->dev);
 int tga_bus_tc = TGA_BUS_TC(par->dev);
 u8 tga_type = par->tga_type;
 const char *tga_type_name = ((void*)0);
 unsigned memory_size;

 switch (tga_type) {
 case 128:
  if (tga_bus_pci)
   tga_type_name = "Digital ZLXp-E1";
  if (tga_bus_tc)
   tga_type_name = "Digital ZLX-E1";
  memory_size = 2097152;
  break;
 case 130:
  if (tga_bus_pci)
   tga_type_name = "Digital ZLXp-E2";
  if (tga_bus_tc)
   tga_type_name = "Digital ZLX-E2";
  memory_size = 8388608;
  break;
 case 129:
  if (tga_bus_pci)
   tga_type_name = "Digital ZLXp-E3";
  if (tga_bus_tc)
   tga_type_name = "Digital ZLX-E3";
  memory_size = 16777216;
  break;
 }
 if (!tga_type_name) {
  tga_type_name = "Unknown";
  memory_size = 16777216;
 }

 strlcpy(info->fix.id, tga_type_name, sizeof(info->fix.id));

 info->fix.type = FB_TYPE_PACKED_PIXELS;
 info->fix.type_aux = 0;
 info->fix.visual = (tga_type == 128
       ? FB_VISUAL_PSEUDOCOLOR
       : FB_VISUAL_DIRECTCOLOR);

 info->fix.smem_start = (size_t) par->tga_fb_base;
 info->fix.smem_len = memory_size;
 info->fix.mmio_start = (size_t) par->tga_regs_base;
 info->fix.mmio_len = 512;

 info->fix.xpanstep = 0;
 info->fix.ypanstep = 0;
 info->fix.ywrapstep = 0;

 info->fix.accel = FB_ACCEL_DEC_TGA;





 if (tga_type != 128) {
  info->var.red.length = 8;
  info->var.green.length = 8;
  info->var.blue.length = 8;
  info->var.red.offset = 16;
  info->var.green.offset = 8;
  info->var.blue.offset = 0;
 }
}
