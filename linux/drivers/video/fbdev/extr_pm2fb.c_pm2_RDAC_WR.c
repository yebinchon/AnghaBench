
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm2fb_par {int dummy; } ;
typedef int s32 ;


 int PM2R_RD_INDEXED_DATA ;
 int PM2R_RD_PALETTE_WRITE_ADDRESS ;
 int pm2_WR (struct pm2fb_par*,int ,int ) ;
 int wmb () ;

__attribute__((used)) static inline void pm2_RDAC_WR(struct pm2fb_par *p, s32 idx, u32 v)
{
 pm2_WR(p, PM2R_RD_PALETTE_WRITE_ADDRESS, idx);
 wmb();
 pm2_WR(p, PM2R_RD_INDEXED_DATA, v);
 wmb();
}
