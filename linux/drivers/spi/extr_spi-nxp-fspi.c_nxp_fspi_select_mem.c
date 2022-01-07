
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct spi_device {unsigned long max_speed_hz; int chip_select; } ;
struct nxp_fspi {int selected; int clk; int dev; scalar_t__ iobase; int memmap_phy_size; } ;


 scalar_t__ FSPI_FLSHA1CR0 ;
 scalar_t__ FSPI_FLSHA2CR0 ;
 scalar_t__ FSPI_FLSHB1CR0 ;
 scalar_t__ FSPI_FLSHB2CR0 ;
 int FSPI_FLSHXCR0_SZ (int ) ;
 int clk_set_rate (int ,unsigned long) ;
 int dev_dbg (int ,char*,int) ;
 int fspi_writel (struct nxp_fspi*,int ,scalar_t__) ;
 int nxp_fspi_clk_disable_unprep (struct nxp_fspi*) ;
 int nxp_fspi_clk_prep_enable (struct nxp_fspi*) ;

__attribute__((used)) static void nxp_fspi_select_mem(struct nxp_fspi *f, struct spi_device *spi)
{
 unsigned long rate = spi->max_speed_hz;
 int ret;
 uint64_t size_kb;





 if (f->selected == spi->chip_select)
  return;


 fspi_writel(f, 0, f->iobase + FSPI_FLSHA1CR0);
 fspi_writel(f, 0, f->iobase + FSPI_FLSHA2CR0);
 fspi_writel(f, 0, f->iobase + FSPI_FLSHB1CR0);
 fspi_writel(f, 0, f->iobase + FSPI_FLSHB2CR0);


 size_kb = FSPI_FLSHXCR0_SZ(f->memmap_phy_size);

 fspi_writel(f, size_kb, f->iobase + FSPI_FLSHA1CR0 +
      4 * spi->chip_select);

 dev_dbg(f->dev, "Slave device [CS:%x] selected\n", spi->chip_select);

 nxp_fspi_clk_disable_unprep(f);

 ret = clk_set_rate(f->clk, rate);
 if (ret)
  return;

 ret = nxp_fspi_clk_prep_enable(f);
 if (ret)
  return;

 f->selected = spi->chip_select;
}
