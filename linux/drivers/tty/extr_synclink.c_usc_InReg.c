
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mgsl_struct {scalar_t__ io_base; scalar_t__ loopback_bits; } ;


 scalar_t__ CCAR ;
 scalar_t__ inw (scalar_t__) ;
 int outw (scalar_t__,scalar_t__) ;

__attribute__((used)) static u16 usc_InReg( struct mgsl_struct *info, u16 RegAddr )
{
 outw( RegAddr + info->loopback_bits, info->io_base + CCAR );
 return inw( info->io_base + CCAR );

}
