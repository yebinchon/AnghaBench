
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mgsl_struct {scalar_t__ bus_type; } ;


 int BIT0 ;
 int BIT1 ;
 int CMCR ;
 int HCR ;
 int IOCR ;
 scalar_t__ MGSL_BUS_TYPE_PCI ;
 int TC0R ;
 int usc_InReg (struct mgsl_struct*,int ) ;
 int usc_OutReg (struct mgsl_struct*,int ,int) ;

__attribute__((used)) static void usc_enable_async_clock( struct mgsl_struct *info, u32 data_rate )
{
 if ( data_rate ) {
  usc_OutReg( info, CMCR, 0x0f64 );
  if ( info->bus_type == MGSL_BUS_TYPE_PCI )
   usc_OutReg( info, TC0R, (u16)((691200/data_rate) - 1) );
  else
   usc_OutReg( info, TC0R, (u16)((921600/data_rate) - 1) );
  usc_OutReg( info, HCR,
       (u16)((usc_InReg( info, HCR ) & ~BIT1) | BIT0) );




  usc_OutReg( info, IOCR,
       (u16)((usc_InReg(info, IOCR) & 0xfff8) | 0x0004) );
 } else {

  usc_OutReg( info, HCR, (u16)(usc_InReg( info, HCR ) & ~BIT0) );
 }

}
