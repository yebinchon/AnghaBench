
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mcfqspi {TYPE_1__* cs_control; } ;
struct TYPE_2__ {int (* teardown ) (TYPE_1__*) ;} ;


 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void mcfqspi_cs_teardown(struct mcfqspi *mcfqspi)
{
 if (mcfqspi->cs_control->teardown)
  mcfqspi->cs_control->teardown(mcfqspi->cs_control);
}
