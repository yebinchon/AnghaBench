
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm2fb_par {scalar_t__ type; int mem_control; int boot_address; int mem_config; } ;


 int DPRINTK (char*) ;
 int PM2F_BEING_RESET ;
 int PM2R_BOOT_ADDRESS ;
 int PM2R_FIFO_DISCON ;
 int PM2R_MEM_CONFIG ;
 int PM2R_MEM_CONTROL ;
 int PM2R_RESET_STATUS ;
 int PM2VR_RD_INDEX_HIGH ;
 scalar_t__ PM2_TYPE_PERMEDIA2V ;
 int WAIT_FIFO (struct pm2fb_par*,int) ;
 int cpu_relax () ;
 int mb () ;
 int pm2_RD (struct pm2fb_par*,int ) ;
 int pm2_WR (struct pm2fb_par*,int ,int) ;
 int wmb () ;

__attribute__((used)) static void reset_card(struct pm2fb_par *p)
{
 if (p->type == PM2_TYPE_PERMEDIA2V)
  pm2_WR(p, PM2VR_RD_INDEX_HIGH, 0);
 pm2_WR(p, PM2R_RESET_STATUS, 0);
 mb();
 while (pm2_RD(p, PM2R_RESET_STATUS) & PM2F_BEING_RESET)
  cpu_relax();
 mb();







 WAIT_FIFO(p, 3);
 pm2_WR(p, PM2R_MEM_CONTROL, p->mem_control);
 pm2_WR(p, PM2R_BOOT_ADDRESS, p->boot_address);
 wmb();
 pm2_WR(p, PM2R_MEM_CONFIG, p->mem_config);
}
