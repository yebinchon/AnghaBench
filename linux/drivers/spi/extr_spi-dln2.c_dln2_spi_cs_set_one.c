
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dln2_spi {int dummy; } ;


 int BIT (int ) ;
 int dln2_spi_cs_set (struct dln2_spi*,int ) ;

__attribute__((used)) static int dln2_spi_cs_set_one(struct dln2_spi *dln2, u8 cs)
{
 return dln2_spi_cs_set(dln2, BIT(cs));
}
