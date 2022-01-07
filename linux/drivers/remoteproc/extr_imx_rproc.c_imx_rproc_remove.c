
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {struct imx_rproc* priv; } ;
struct platform_device {int dummy; } ;
struct imx_rproc {int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct rproc* platform_get_drvdata (struct platform_device*) ;
 int rproc_del (struct rproc*) ;
 int rproc_free (struct rproc*) ;

__attribute__((used)) static int imx_rproc_remove(struct platform_device *pdev)
{
 struct rproc *rproc = platform_get_drvdata(pdev);
 struct imx_rproc *priv = rproc->priv;

 clk_disable_unprepare(priv->clk);
 rproc_del(rproc);
 rproc_free(rproc);

 return 0;
}
