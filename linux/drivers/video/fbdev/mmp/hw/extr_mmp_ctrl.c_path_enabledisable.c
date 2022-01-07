
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmp_path {int access_ok; } ;


 scalar_t__ LCD_SCLK (struct mmp_path*) ;
 int SCLK_DISABLE ;
 scalar_t__ ctrl_regs (struct mmp_path*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void path_enabledisable(struct mmp_path *path, int on)
{
 u32 tmp;
 mutex_lock(&path->access_ok);
 tmp = readl_relaxed(ctrl_regs(path) + LCD_SCLK(path));
 if (on)
  tmp &= ~SCLK_DISABLE;
 else
  tmp |= SCLK_DISABLE;
 writel_relaxed(tmp, ctrl_regs(path) + LCD_SCLK(path));
 mutex_unlock(&path->access_ok);
}
