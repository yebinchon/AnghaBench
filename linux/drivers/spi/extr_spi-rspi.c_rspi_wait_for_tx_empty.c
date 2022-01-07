
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rspi_data {int dummy; } ;


 int SPCR_SPTIE ;
 int SPSR_SPTEF ;
 int rspi_wait_for_interrupt (struct rspi_data*,int ,int ) ;

__attribute__((used)) static inline int rspi_wait_for_tx_empty(struct rspi_data *rspi)
{
 return rspi_wait_for_interrupt(rspi, SPSR_SPTEF, SPCR_SPTIE);
}
