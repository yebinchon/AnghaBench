
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mgsl_struct {int io_base; scalar_t__ mbre_bit; } ;


 scalar_t__ inw (int ) ;
 int outw (scalar_t__,int ) ;

__attribute__((used)) static u16 usc_InDmaReg( struct mgsl_struct *info, u16 RegAddr )
{



 outw( RegAddr + info->mbre_bit, info->io_base );
 return inw( info->io_base );

}
