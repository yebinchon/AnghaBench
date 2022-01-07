
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct platform_device {int dev; } ;
struct dw_spi_mscc {scalar_t__ syscon; scalar_t__ spi_mst; } ;
struct TYPE_2__ {int set_cs; } ;
struct dw_spi_mmio {struct dw_spi_mscc* priv; TYPE_1__ dws; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int MSCC_CPU_SYSTEM_CTRL_GENERAL_CTRL ;
 int MSCC_IF_SI_OWNER_MASK ;
 int MSCC_IF_SI_OWNER_SIMC ;
 scalar_t__ MSCC_SPI_MST_SW_MODE ;
 int PTR_ERR (scalar_t__) ;
 int dev_err (int *,char*) ;
 struct dw_spi_mscc* devm_kzalloc (int *,int,int ) ;
 scalar_t__ devm_platform_ioremap_resource (struct platform_device*,int) ;
 int dw_spi_mscc_set_cs ;
 int regmap_update_bits (scalar_t__,int ,int,int) ;
 scalar_t__ syscon_regmap_lookup_by_compatible (char const*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int dw_spi_mscc_init(struct platform_device *pdev,
       struct dw_spi_mmio *dwsmmio,
       const char *cpu_syscon, u32 if_si_owner_offset)
{
 struct dw_spi_mscc *dwsmscc;

 dwsmscc = devm_kzalloc(&pdev->dev, sizeof(*dwsmscc), GFP_KERNEL);
 if (!dwsmscc)
  return -ENOMEM;

 dwsmscc->spi_mst = devm_platform_ioremap_resource(pdev, 1);
 if (IS_ERR(dwsmscc->spi_mst)) {
  dev_err(&pdev->dev, "SPI_MST region map failed\n");
  return PTR_ERR(dwsmscc->spi_mst);
 }

 dwsmscc->syscon = syscon_regmap_lookup_by_compatible(cpu_syscon);
 if (IS_ERR(dwsmscc->syscon))
  return PTR_ERR(dwsmscc->syscon);


 writel(0, dwsmscc->spi_mst + MSCC_SPI_MST_SW_MODE);


 regmap_update_bits(dwsmscc->syscon, MSCC_CPU_SYSTEM_CTRL_GENERAL_CTRL,
      MSCC_IF_SI_OWNER_MASK << if_si_owner_offset,
      MSCC_IF_SI_OWNER_SIMC << if_si_owner_offset);

 dwsmmio->dws.set_cs = dw_spi_mscc_set_cs;
 dwsmmio->priv = dwsmscc;

 return 0;
}
