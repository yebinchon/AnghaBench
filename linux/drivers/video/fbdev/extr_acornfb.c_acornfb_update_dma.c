
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct fb_var_screeninfo {int yoffset; } ;
struct TYPE_2__ {int line_length; scalar_t__ smem_start; } ;
struct fb_info {TYPE_1__ fix; } ;


 int IOMD_VIDINIT ;
 int VDMA_INIT ;
 int iomd_writel (scalar_t__,int ) ;
 int memc_write (int ,int) ;

__attribute__((used)) static inline void
acornfb_update_dma(struct fb_info *info, struct fb_var_screeninfo *var)
{
 u_int off = var->yoffset * info->fix.line_length;






}
