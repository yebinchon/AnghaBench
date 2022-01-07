
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm2fb_par {int video; } ;
struct fb_info {struct pm2fb_par* par; } ;


 int DPRINTK (char*,int) ;





 int PM2F_BLANK_LOW ;
 int PM2F_HSYNC_MASK ;
 int PM2F_VIDEO_ENABLE ;
 int PM2F_VSYNC_MASK ;
 int set_video (struct pm2fb_par*,int) ;

__attribute__((used)) static int pm2fb_blank(int blank_mode, struct fb_info *info)
{
 struct pm2fb_par *par = info->par;
 u32 video = par->video;

 DPRINTK("blank_mode %d\n", blank_mode);

 switch (blank_mode) {
 case 129:

  video |= PM2F_VIDEO_ENABLE;
  break;
 case 131:

  video &= ~PM2F_VIDEO_ENABLE;
  break;
 case 128:

  video &= ~(PM2F_VSYNC_MASK | PM2F_BLANK_LOW);
  break;
 case 132:

  video &= ~(PM2F_HSYNC_MASK | PM2F_BLANK_LOW);
  break;
 case 130:

  video &= ~(PM2F_VSYNC_MASK | PM2F_HSYNC_MASK | PM2F_BLANK_LOW);
  break;
 }
 set_video(par, video);
 return 0;
}
