
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcx_par {scalar_t__ lowdepth; } ;
struct TYPE_2__ {int smem_len; } ;
struct fb_info {TYPE_1__ fix; scalar_t__ par; } ;


 int FBTYPE_TCXCOLOR ;
 int sbusfb_ioctl_helper (unsigned int,unsigned long,struct fb_info*,int ,int,int ) ;

__attribute__((used)) static int tcx_ioctl(struct fb_info *info, unsigned int cmd,
       unsigned long arg)
{
 struct tcx_par *par = (struct tcx_par *) info->par;

 return sbusfb_ioctl_helper(cmd, arg, info,
       FBTYPE_TCXCOLOR,
       (par->lowdepth ? 8 : 24),
       info->fix.smem_len);
}
