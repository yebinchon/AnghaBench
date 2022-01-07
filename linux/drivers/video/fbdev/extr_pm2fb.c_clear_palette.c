
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm2fb_par {int dummy; } ;


 int PM2R_RD_PALETTE_DATA ;
 int PM2R_RD_PALETTE_WRITE_ADDRESS ;
 int WAIT_FIFO (struct pm2fb_par*,int) ;
 int pm2_WR (struct pm2fb_par*,int ,int ) ;
 int wmb () ;

__attribute__((used)) static void clear_palette(struct pm2fb_par *p)
{
 int i = 256;

 WAIT_FIFO(p, 1);
 pm2_WR(p, PM2R_RD_PALETTE_WRITE_ADDRESS, 0);
 wmb();
 while (i--) {
  WAIT_FIFO(p, 3);
  pm2_WR(p, PM2R_RD_PALETTE_DATA, 0);
  pm2_WR(p, PM2R_RD_PALETTE_DATA, 0);
  pm2_WR(p, PM2R_RD_PALETTE_DATA, 0);
 }
}
