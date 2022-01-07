
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmp_path {int id; } ;
struct mmp_overlay {int access_ok; struct mmp_path* path; } ;


 int CFG_DMA_ENA (int) ;
 int CFG_DMA_ENA_MASK ;
 int CFG_GRA_ENA (int) ;
 int CFG_GRA_ENA_MASK ;
 scalar_t__ ctrl_regs (struct mmp_path*) ;
 scalar_t__ dma_ctrl (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ overlay_is_vid (struct mmp_overlay*) ;
 int readl_relaxed (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void dmafetch_onoff(struct mmp_overlay *overlay, int on)
{
 u32 mask = overlay_is_vid(overlay) ? CFG_DMA_ENA_MASK :
     CFG_GRA_ENA_MASK;
 u32 enable = overlay_is_vid(overlay) ? CFG_DMA_ENA(1) : CFG_GRA_ENA(1);
 u32 tmp;
 struct mmp_path *path = overlay->path;

 mutex_lock(&overlay->access_ok);
 tmp = readl_relaxed(ctrl_regs(path) + dma_ctrl(0, path->id));
 tmp &= ~mask;
 tmp |= (on ? enable : 0);
 writel(tmp, ctrl_regs(path) + dma_ctrl(0, path->id));
 mutex_unlock(&overlay->access_ok);
}
