
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct nxp_fspi {int lock; scalar_t__ iobase; } ;


 scalar_t__ FSPI_MCR0 ;
 int FSPI_MCR0_MDIS ;
 int fspi_writel (struct nxp_fspi*,int ,scalar_t__) ;
 int mutex_destroy (int *) ;
 int nxp_fspi_clk_disable_unprep (struct nxp_fspi*) ;
 struct nxp_fspi* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int nxp_fspi_remove(struct platform_device *pdev)
{
 struct nxp_fspi *f = platform_get_drvdata(pdev);


 fspi_writel(f, FSPI_MCR0_MDIS, f->iobase + FSPI_MCR0);

 nxp_fspi_clk_disable_unprep(f);

 mutex_destroy(&f->lock);

 return 0;
}
