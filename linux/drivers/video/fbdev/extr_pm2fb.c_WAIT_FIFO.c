
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pm2fb_par {int dummy; } ;


 int PM2R_IN_FIFO_SPACE ;
 int cpu_relax () ;
 scalar_t__ pm2_RD (struct pm2fb_par*,int ) ;

__attribute__((used)) static inline void WAIT_FIFO(struct pm2fb_par *p, u32 a)
{
 while (pm2_RD(p, PM2R_IN_FIFO_SPACE) < a)
  cpu_relax();
}
