
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm2fb_par {int type; } ;


 int PM2F_PLL_LOCKED ;
 int PM2I_RD_PIXEL_CLOCK_A1 ;
 int PM2I_RD_PIXEL_CLOCK_A2 ;
 int PM2I_RD_PIXEL_CLOCK_A3 ;
 int PM2I_RD_PIXEL_CLOCK_STATUS ;
 int PM2R_RD_INDEXED_DATA ;
 int PM2VI_RD_CLK0_FEEDBACK ;
 int PM2VI_RD_CLK0_POSTSCALE ;
 int PM2VI_RD_CLK0_PRESCALE ;
 int PM2VR_RD_INDEX_HIGH ;


 int WAIT_FIFO (struct pm2fb_par*,int) ;
 int pm2_RD (struct pm2fb_par*,int ) ;
 int pm2_RDAC_RD (struct pm2fb_par*,int ) ;
 int pm2_RDAC_WR (struct pm2fb_par*,int ,int) ;
 int pm2_WR (struct pm2fb_par*,int ,int) ;
 int pm2_mnp (int,unsigned char*,unsigned char*,unsigned char*) ;
 int pm2v_RDAC_WR (struct pm2fb_par*,int,unsigned char) ;
 int pm2v_mnp (int,unsigned char*,unsigned char*,unsigned char*) ;
 int rmb () ;

__attribute__((used)) static void set_pixclock(struct pm2fb_par *par, u32 clk)
{
 int i;
 unsigned char m, n, p;

 switch (par->type) {
 case 129:
  pm2_mnp(clk, &m, &n, &p);
  WAIT_FIFO(par, 10);
  pm2_RDAC_WR(par, PM2I_RD_PIXEL_CLOCK_A3, 0);
  pm2_RDAC_WR(par, PM2I_RD_PIXEL_CLOCK_A1, m);
  pm2_RDAC_WR(par, PM2I_RD_PIXEL_CLOCK_A2, n);
  pm2_RDAC_WR(par, PM2I_RD_PIXEL_CLOCK_A3, 8|p);
  pm2_RDAC_RD(par, PM2I_RD_PIXEL_CLOCK_STATUS);
  rmb();
  for (i = 256; i; i--)
   if (pm2_RD(par, PM2R_RD_INDEXED_DATA) & PM2F_PLL_LOCKED)
    break;
  break;
 case 128:
  pm2v_mnp(clk/2, &m, &n, &p);
  WAIT_FIFO(par, 8);
  pm2_WR(par, PM2VR_RD_INDEX_HIGH, PM2VI_RD_CLK0_PRESCALE >> 8);
  pm2v_RDAC_WR(par, PM2VI_RD_CLK0_PRESCALE, m);
  pm2v_RDAC_WR(par, PM2VI_RD_CLK0_FEEDBACK, n);
  pm2v_RDAC_WR(par, PM2VI_RD_CLK0_POSTSCALE, p);
  pm2_WR(par, PM2VR_RD_INDEX_HIGH, 0);
  break;
 }
}
