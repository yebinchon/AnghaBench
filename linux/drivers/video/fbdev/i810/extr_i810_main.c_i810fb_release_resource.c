
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int physical; scalar_t__ virtual; } ;
struct gtt_data {scalar_t__ i810_fb_memory; scalar_t__ i810_cursor_memory; } ;
struct i810fb_par {int res_flags; int mmio_start_phys; TYPE_1__ aperture; int edid; scalar_t__ mmio_start_virtual; struct gtt_data i810_gtt; int wc_cookie; } ;
struct fb_info {int dummy; } ;


 int FRAMEBUFFER_REQ ;
 int MMIO_REQ ;
 int MMIO_SIZE ;
 int agp_free_memory (scalar_t__) ;
 int arch_phys_wc_del (int ) ;
 int framebuffer_release (struct fb_info*) ;
 int i810_delete_i2c_busses (struct i810fb_par*) ;
 int iounmap (scalar_t__) ;
 int kfree (int ) ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static void i810fb_release_resource(struct fb_info *info,
        struct i810fb_par *par)
{
 struct gtt_data *gtt = &par->i810_gtt;
 arch_phys_wc_del(par->wc_cookie);

 i810_delete_i2c_busses(par);

 if (par->i810_gtt.i810_cursor_memory)
  agp_free_memory(gtt->i810_cursor_memory);
 if (par->i810_gtt.i810_fb_memory)
  agp_free_memory(gtt->i810_fb_memory);

 if (par->mmio_start_virtual)
  iounmap(par->mmio_start_virtual);
 if (par->aperture.virtual)
  iounmap(par->aperture.virtual);
 kfree(par->edid);
 if (par->res_flags & FRAMEBUFFER_REQ)
  release_mem_region(par->aperture.physical,
       par->aperture.size);
 if (par->res_flags & MMIO_REQ)
  release_mem_region(par->mmio_start_phys, MMIO_SIZE);

 framebuffer_release(info);

}
