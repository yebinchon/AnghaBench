
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_rproc {int * mbox_chan; int clk; } ;
struct rproc {struct st_rproc* priv; } ;
struct platform_device {int dummy; } ;


 int MBOX_MAX ;
 int ST_RPROC_MAX_VRING ;
 int clk_disable_unprepare (int ) ;
 int mbox_free_channel (int ) ;
 struct rproc* platform_get_drvdata (struct platform_device*) ;
 int rproc_del (struct rproc*) ;
 int rproc_free (struct rproc*) ;

__attribute__((used)) static int st_rproc_remove(struct platform_device *pdev)
{
 struct rproc *rproc = platform_get_drvdata(pdev);
 struct st_rproc *ddata = rproc->priv;
 int i;

 rproc_del(rproc);

 clk_disable_unprepare(ddata->clk);

 for (i = 0; i < ST_RPROC_MAX_VRING * MBOX_MAX; i++)
  mbox_free_channel(ddata->mbox_chan[i]);

 rproc_free(rproc);

 return 0;
}
