
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* phys; } ;
struct mmp_overlay {TYPE_1__ addr; int path; } ;
struct mmp_addr {int * phys; } ;
struct lcd_regs {int g_0; int v_v0; int v_u0; int v_y0; } ;


 int memcpy (TYPE_1__*,struct mmp_addr*,int) ;
 scalar_t__ overlay_is_vid (struct mmp_overlay*) ;
 struct lcd_regs* path_regs (int ) ;
 int writel_relaxed (int ,int *) ;

__attribute__((used)) static int overlay_set_addr(struct mmp_overlay *overlay, struct mmp_addr *addr)
{
 struct lcd_regs *regs = path_regs(overlay->path);


 memcpy(&overlay->addr, addr, sizeof(struct mmp_addr));

 if (overlay_is_vid(overlay)) {
  writel_relaxed(addr->phys[0], &regs->v_y0);
  writel_relaxed(addr->phys[1], &regs->v_u0);
  writel_relaxed(addr->phys[2], &regs->v_v0);
 } else
  writel_relaxed(addr->phys[0], &regs->g_0);

 return overlay->addr.phys[0];
}
