
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nxp_fspi {scalar_t__ iobase; } ;


 scalar_t__ FSPI_MCR0 ;
 int FSPI_MCR0_SWRST ;
 int POLL_TOUT ;
 int WARN_ON (int) ;
 int fspi_readl (struct nxp_fspi*,scalar_t__) ;
 int fspi_readl_poll_tout (struct nxp_fspi*,scalar_t__,int,int ,int ,int) ;
 int fspi_writel (struct nxp_fspi*,int,scalar_t__) ;

__attribute__((used)) static inline void nxp_fspi_invalid(struct nxp_fspi *f)
{
 u32 reg;
 int ret;

 reg = fspi_readl(f, f->iobase + FSPI_MCR0);
 fspi_writel(f, reg | FSPI_MCR0_SWRST, f->iobase + FSPI_MCR0);


 ret = fspi_readl_poll_tout(f, f->iobase + FSPI_MCR0,
       FSPI_MCR0_SWRST, 0, POLL_TOUT, 0);
 WARN_ON(ret);
}
