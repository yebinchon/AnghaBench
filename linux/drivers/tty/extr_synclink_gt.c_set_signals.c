
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int signals; } ;


 unsigned char BIT2 ;
 unsigned char BIT3 ;
 int SerialSignal_DTR ;
 int SerialSignal_RTS ;
 int VCR ;
 unsigned char rd_reg8 (struct slgt_info*,int ) ;
 int wr_reg8 (struct slgt_info*,int ,unsigned char) ;

__attribute__((used)) static void set_signals(struct slgt_info *info)
{
 unsigned char val = rd_reg8(info, VCR);
 if (info->signals & SerialSignal_DTR)
  val |= BIT3;
 else
  val &= ~BIT3;
 if (info->signals & SerialSignal_RTS)
  val |= BIT2;
 else
  val &= ~BIT2;
 wr_reg8(info, VCR, val);
}
