
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1100fb_info {int clk; } ;


 int clk_get_rate (int ) ;

__attribute__((used)) static inline unsigned int get_pcd(struct sa1100fb_info *fbi,
  unsigned int pixclock)
{
 unsigned int pcd = clk_get_rate(fbi->clk) / 100 / 1000;

 pcd *= pixclock;
 pcd /= 10000000;

 return pcd + 1;
}
