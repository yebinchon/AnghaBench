
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct st_slim_rproc {scalar_t__ slimcore; scalar_t__ peri; } ;
struct rproc {int dev; struct st_slim_rproc* priv; } ;


 int SLIM_CLK_GATE_DIS ;
 scalar_t__ SLIM_CLK_GATE_OFST ;
 scalar_t__ SLIM_CMD_MASK_OFST ;
 scalar_t__ SLIM_EN_OFST ;
 int SLIM_EN_RUN ;
 scalar_t__ SLIM_INT_MASK_OFST ;
 int dev_dbg (int *,char*) ;
 int dev_warn (int *,char*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int slim_rproc_stop(struct rproc *rproc)
{
 struct st_slim_rproc *slim_rproc = rproc->priv;
 u32 val;


 writel(0UL, slim_rproc->peri + SLIM_INT_MASK_OFST);
 writel(0UL, slim_rproc->peri + SLIM_CMD_MASK_OFST);


 writel(SLIM_CLK_GATE_DIS, slim_rproc->slimcore + SLIM_CLK_GATE_OFST);

 writel(!SLIM_EN_RUN, slim_rproc->slimcore + SLIM_EN_OFST);

 val = readl(slim_rproc->slimcore + SLIM_EN_OFST);
 if (val & SLIM_EN_RUN)
  dev_warn(&rproc->dev, "Failed to disable SLIM");

 dev_dbg(&rproc->dev, "slim stopped\n");

 return 0;
}
