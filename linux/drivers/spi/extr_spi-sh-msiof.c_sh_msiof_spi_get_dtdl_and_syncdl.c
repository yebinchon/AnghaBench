
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sh_msiof_spi_priv {TYPE_2__* info; TYPE_1__* pdev; } ;
struct TYPE_4__ {int dtdl; int syncdl; } ;
struct TYPE_3__ {int dev; } ;


 int MDR1_DTDL_SHIFT ;
 int MDR1_SYNCDL_SHIFT ;
 int dev_warn (int *,char*) ;
 int sh_msiof_get_delay_bit (int) ;

__attribute__((used)) static u32 sh_msiof_spi_get_dtdl_and_syncdl(struct sh_msiof_spi_priv *p)
{
 u32 val;

 if (!p->info)
  return 0;


 if (p->info->dtdl > 200 || p->info->syncdl > 300) {
  dev_warn(&p->pdev->dev, "DTDL or SYNCDL is too large\n");
  return 0;
 }


 if ((p->info->dtdl + p->info->syncdl) % 100) {
  dev_warn(&p->pdev->dev, "the sum of DTDL/SYNCDL is not good\n");
  return 0;
 }

 val = sh_msiof_get_delay_bit(p->info->dtdl) << MDR1_DTDL_SHIFT;
 val |= sh_msiof_get_delay_bit(p->info->syncdl) << MDR1_SYNCDL_SHIFT;

 return val;
}
