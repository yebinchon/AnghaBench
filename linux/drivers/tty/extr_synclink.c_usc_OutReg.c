
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mgsl_struct {scalar_t__ bus_type; scalar_t__ io_base; scalar_t__ loopback_bits; } ;


 scalar_t__ CCAR ;
 scalar_t__ MGSL_BUS_TYPE_PCI ;
 int inw (scalar_t__) ;
 int outw (scalar_t__,scalar_t__) ;

__attribute__((used)) static void usc_OutReg( struct mgsl_struct *info, u16 RegAddr, u16 RegValue )
{
 outw( RegAddr + info->loopback_bits, info->io_base + CCAR );
 outw( RegValue, info->io_base + CCAR );


 if ( info->bus_type == MGSL_BUS_TYPE_PCI )
  inw( info->io_base + CCAR );

}
