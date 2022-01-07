
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmpfb_info {int path; int mode; int output_fmt; int dev; struct fb_info* fb_info; } ;
struct mmp_mode {int pix_fmt_out; } ;
struct fb_videomode {int dummy; } ;
struct fb_info {int var; int modelist; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_warn (int ,char*) ;
 int fb_videomode_to_modelist (struct fb_videomode*,int,int *) ;
 int fb_videomode_to_var (int *,int *) ;
 struct fb_videomode* kcalloc (int,int,int ) ;
 int kfree (struct fb_videomode*) ;
 int memcpy (int *,struct fb_videomode*,int) ;
 int mmp_path_get_modelist (int ,struct mmp_mode**) ;
 int mmp_path_set_mode (int ,struct mmp_mode*) ;
 int mmpmode_to_fbmode (struct fb_videomode*,struct mmp_mode*) ;

__attribute__((used)) static int modes_setup(struct mmpfb_info *fbi)
{
 struct fb_videomode *videomodes;
 struct mmp_mode *mmp_modes;
 struct fb_info *info = fbi->fb_info;
 int videomode_num, i;


 videomode_num = mmp_path_get_modelist(fbi->path, &mmp_modes);
 if (!videomode_num) {
  dev_warn(fbi->dev, "can't get videomode num\n");
  return 0;
 }

 videomodes = kcalloc(videomode_num, sizeof(struct fb_videomode),
        GFP_KERNEL);
 if (!videomodes)
  return -ENOMEM;

 for (i = 0; i < videomode_num; i++)
  mmpmode_to_fbmode(&videomodes[i], &mmp_modes[i]);
 fb_videomode_to_modelist(videomodes, videomode_num, &info->modelist);


 memcpy(&fbi->mode, &videomodes[0], sizeof(struct fb_videomode));
 fbi->output_fmt = mmp_modes[0].pix_fmt_out;
 fb_videomode_to_var(&info->var, &fbi->mode);
 mmp_path_set_mode(fbi->path, &mmp_modes[0]);

 kfree(videomodes);
 return videomode_num;
}
