
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ spx0; scalar_t__ spx1; } ;
union cvmx_npi_rsl_int_blocks {TYPE_1__ s; int u64; } ;
typedef int irqreturn_t ;


 int CVMX_NPI_RSL_INT_BLOCKS ;
 int IRQ_NONE ;
 int cvm_oct_spi_spx_int (int) ;
 int cvmx_read_csr (int ) ;

__attribute__((used)) static irqreturn_t cvm_oct_spi_rml_interrupt(int cpl, void *dev_id)
{
 irqreturn_t return_status = IRQ_NONE;
 union cvmx_npi_rsl_int_blocks rsl_int_blocks;


 rsl_int_blocks.u64 = cvmx_read_csr(CVMX_NPI_RSL_INT_BLOCKS);
 if (rsl_int_blocks.s.spx1)
  return_status = cvm_oct_spi_spx_int(1);

 if (rsl_int_blocks.s.spx0)
  return_status = cvm_oct_spi_spx_int(0);

 return return_status;
}
