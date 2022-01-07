
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int smem_len; int line_length; int accel; int visual; int type; scalar_t__* id; } ;
struct fb_info {TYPE_1__ fix; scalar_t__ par; } ;
struct cg6_par {int fhc; } ;



 int CG6_FHC_CPU_MASK ;

 int CG6_FHC_REV_MASK ;
 int CG6_FHC_REV_SHIFT ;
 int FB_ACCEL_SUN_CGSIX ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int sbus_readl (int ) ;
 int sprintf (scalar_t__*,char*,char const*,char const*) ;

__attribute__((used)) static void cg6_init_fix(struct fb_info *info, int linebytes)
{
 struct cg6_par *par = (struct cg6_par *)info->par;
 const char *cg6_cpu_name, *cg6_card_name;
 u32 conf;

 conf = sbus_readl(par->fhc);
 switch (conf & CG6_FHC_CPU_MASK) {
 case 128:
  cg6_cpu_name = "sparc";
  break;
 case 129:
  cg6_cpu_name = "68020";
  break;
 default:
  cg6_cpu_name = "i386";
  break;
 }
 if (((conf >> CG6_FHC_REV_SHIFT) & CG6_FHC_REV_MASK) >= 11) {
  if (info->fix.smem_len <= 0x100000)
   cg6_card_name = "TGX";
  else
   cg6_card_name = "TGX+";
 } else {
  if (info->fix.smem_len <= 0x100000)
   cg6_card_name = "GX";
  else
   cg6_card_name = "GX+";
 }

 sprintf(info->fix.id, "%s %s", cg6_card_name, cg6_cpu_name);
 info->fix.id[sizeof(info->fix.id) - 1] = 0;

 info->fix.type = FB_TYPE_PACKED_PIXELS;
 info->fix.visual = FB_VISUAL_PSEUDOCOLOR;

 info->fix.line_length = linebytes;

 info->fix.accel = FB_ACCEL_SUN_CGSIX;
}
