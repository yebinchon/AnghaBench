
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct mbxfb_info {TYPE_1__* fb_req; TYPE_1__* reg_req; int (* platform_remove ) (struct fb_info*) ;} ;
struct fb_info {struct mbxfb_info* par; } ;
struct TYPE_2__ {int start; } ;


 int SYSRST ;
 int SYSRST_RST ;
 int framebuffer_release (struct fb_info*) ;
 int mbxfb_debugfs_remove (struct fb_info*) ;
 struct fb_info* platform_get_drvdata (struct platform_device*) ;
 int release_mem_region (int ,int ) ;
 int res_size (TYPE_1__*) ;
 int stub1 (struct fb_info*) ;
 int unregister_framebuffer (struct fb_info*) ;
 int write_reg_dly (int ,int ) ;

__attribute__((used)) static int mbxfb_remove(struct platform_device *dev)
{
 struct fb_info *fbi = platform_get_drvdata(dev);

 write_reg_dly(SYSRST_RST, SYSRST);

 mbxfb_debugfs_remove(fbi);

 if (fbi) {
  struct mbxfb_info *mfbi = fbi->par;

  unregister_framebuffer(fbi);
  if (mfbi) {
   if (mfbi->platform_remove)
    mfbi->platform_remove(fbi);


   if (mfbi->reg_req)
    release_mem_region(mfbi->reg_req->start,
         res_size(mfbi->reg_req));
   if (mfbi->fb_req)
    release_mem_region(mfbi->fb_req->start,
         res_size(mfbi->fb_req));
  }
  framebuffer_release(fbi);
 }

 return 0;
}
