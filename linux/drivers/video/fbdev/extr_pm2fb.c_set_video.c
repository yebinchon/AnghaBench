
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm2fb_par {int type; } ;


 int DPRINTK (char*,int) ;
 int PM2F_HSYNC_ACT_HIGH ;
 int PM2F_HSYNC_ACT_LOW ;
 int PM2F_HSYNC_MASK ;
 int PM2F_RD_PALETTE_WIDTH_8 ;
 int PM2F_VSYNC_ACT_HIGH ;
 int PM2F_VSYNC_ACT_LOW ;
 int PM2F_VSYNC_MASK ;
 int PM2I_RD_MISC_CONTROL ;
 int PM2R_VIDEO_CONTROL ;
 int PM2VI_RD_SYNC_CONTROL ;


 int WAIT_FIFO (struct pm2fb_par*,int) ;
 int pm2_RDAC_WR (struct pm2fb_par*,int ,int) ;
 int pm2_WR (struct pm2fb_par*,int ,int) ;
 int pm2v_RDAC_WR (struct pm2fb_par*,int ,int) ;

__attribute__((used)) static void set_video(struct pm2fb_par *p, u32 video)
{
 u32 tmp;
 u32 vsync = video;

 DPRINTK("video = 0x%x\n", video);







 vsync &= ~(PM2F_HSYNC_MASK | PM2F_VSYNC_MASK);
 vsync |= PM2F_HSYNC_ACT_HIGH | PM2F_VSYNC_ACT_HIGH;

 WAIT_FIFO(p, 3);
 pm2_WR(p, PM2R_VIDEO_CONTROL, vsync);

 switch (p->type) {
 case 129:
  tmp = PM2F_RD_PALETTE_WIDTH_8;
  if ((video & PM2F_HSYNC_MASK) == PM2F_HSYNC_ACT_LOW)
   tmp |= 4;
  if ((video & PM2F_VSYNC_MASK) == PM2F_VSYNC_ACT_LOW)
   tmp |= 8;
  pm2_RDAC_WR(p, PM2I_RD_MISC_CONTROL, tmp);
  break;
 case 128:
  tmp = 0;
  if ((video & PM2F_HSYNC_MASK) == PM2F_HSYNC_ACT_LOW)
   tmp |= 1;
  if ((video & PM2F_VSYNC_MASK) == PM2F_VSYNC_ACT_LOW)
   tmp |= 4;
  pm2v_RDAC_WR(p, PM2VI_RD_SYNC_CONTROL, tmp);
  break;
 }
}
