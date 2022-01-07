
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {scalar_t__ priv; } ;
struct da8xx_rproc {int chipsig; } ;


 int SYSCFG_CHIPSIG2 ;
 int writel (int ,int ) ;

__attribute__((used)) static void da8xx_rproc_kick(struct rproc *rproc, int vqid)
{
 struct da8xx_rproc *drproc = (struct da8xx_rproc *)rproc->priv;


 writel(SYSCFG_CHIPSIG2, drproc->chipsig);
}
