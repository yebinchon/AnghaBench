
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dw_spi_mmio {int dummy; } ;


 int OCELOT_IF_SI_OWNER_OFFSET ;
 int dw_spi_mscc_init (struct platform_device*,struct dw_spi_mmio*,char*,int ) ;

__attribute__((used)) static int dw_spi_mscc_ocelot_init(struct platform_device *pdev,
       struct dw_spi_mmio *dwsmmio)
{
 return dw_spi_mscc_init(pdev, dwsmmio, "mscc,ocelot-cpu-syscon",
    OCELOT_IF_SI_OWNER_OFFSET);
}
