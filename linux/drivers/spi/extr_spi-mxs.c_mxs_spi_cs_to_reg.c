
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BM_SSP_CTRL0_WAIT_FOR_CMD ;
 int BM_SSP_CTRL0_WAIT_FOR_IRQ ;

__attribute__((used)) static u32 mxs_spi_cs_to_reg(unsigned cs)
{
 u32 select = 0;
 if (cs & 1)
  select |= BM_SSP_CTRL0_WAIT_FOR_CMD;
 if (cs & 2)
  select |= BM_SSP_CTRL0_WAIT_FOR_IRQ;

 return select;
}
