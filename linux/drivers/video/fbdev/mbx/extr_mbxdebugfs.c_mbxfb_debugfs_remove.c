
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbxfb_info {int debugfs_dir; } ;
struct fb_info {struct mbxfb_info* par; } ;


 int debugfs_remove_recursive (int ) ;

__attribute__((used)) static void mbxfb_debugfs_remove(struct fb_info *fbi)
{
 struct mbxfb_info *mfbi = fbi->par;

 debugfs_remove_recursive(mfbi->debugfs_dir);
}
