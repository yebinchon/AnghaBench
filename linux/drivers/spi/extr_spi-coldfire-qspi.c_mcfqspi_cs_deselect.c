
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mcfqspi {TYPE_1__* cs_control; } ;
struct TYPE_2__ {int (* deselect ) (TYPE_1__*,int ,int) ;} ;


 int stub1 (TYPE_1__*,int ,int) ;

__attribute__((used)) static void mcfqspi_cs_deselect(struct mcfqspi *mcfqspi, u8 chip_select,
    bool cs_high)
{
 mcfqspi->cs_control->deselect(mcfqspi->cs_control, chip_select, cs_high);
}
