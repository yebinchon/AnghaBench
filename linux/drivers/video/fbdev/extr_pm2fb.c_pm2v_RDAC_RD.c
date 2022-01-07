
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm2fb_par {int dummy; } ;
typedef int s32 ;


 int PM2VR_RD_INDEXED_DATA ;
 int PM2VR_RD_INDEX_LOW ;
 int mb () ;
 int pm2_RD (struct pm2fb_par*,int ) ;
 int pm2_WR (struct pm2fb_par*,int ,int) ;

__attribute__((used)) static inline u32 pm2v_RDAC_RD(struct pm2fb_par *p, s32 idx)
{
 pm2_WR(p, PM2VR_RD_INDEX_LOW, idx & 0xff);
 mb();
 return pm2_RD(p, PM2VR_RD_INDEXED_DATA);
}
