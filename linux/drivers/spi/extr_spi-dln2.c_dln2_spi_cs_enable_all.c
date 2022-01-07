
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dln2_spi {TYPE_1__* master; } ;
struct TYPE_2__ {scalar_t__ num_chipselect; } ;


 int GENMASK (scalar_t__,int ) ;
 int dln2_spi_cs_enable (struct dln2_spi*,int ,int) ;

__attribute__((used)) static int dln2_spi_cs_enable_all(struct dln2_spi *dln2, bool enable)
{
 u8 cs_mask = GENMASK(dln2->master->num_chipselect - 1, 0);

 return dln2_spi_cs_enable(dln2, cs_mask, enable);
}
