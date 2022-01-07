
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int if_mode; int signals; } ;


 unsigned char BIT0 ;
 unsigned char BIT1 ;
 unsigned char BIT2 ;
 unsigned char BIT3 ;
 unsigned char BIT4 ;
 unsigned char BIT5 ;
 unsigned char BIT6 ;
 unsigned char BIT7 ;
 int MGSL_INTERFACE_LL ;
 int MGSL_INTERFACE_MASK ;
 int MGSL_INTERFACE_MSB_FIRST ;
 int MGSL_INTERFACE_RL ;



 int SerialSignal_DTR ;
 int SerialSignal_RTS ;
 int VCR ;
 int wr_reg8 (struct slgt_info*,int ,unsigned char) ;

__attribute__((used)) static void msc_set_vcr(struct slgt_info *info)
{
 unsigned char val = 0;
 switch(info->if_mode & MGSL_INTERFACE_MASK)
 {
 case 130:
  val |= BIT5;
  break;
 case 128:
  val |= BIT7 + BIT6 + BIT5;
  break;
 case 129:
  val |= BIT6;
  break;
 }

 if (info->if_mode & MGSL_INTERFACE_MSB_FIRST)
  val |= BIT4;
 if (info->signals & SerialSignal_DTR)
  val |= BIT3;
 if (info->signals & SerialSignal_RTS)
  val |= BIT2;
 if (info->if_mode & MGSL_INTERFACE_LL)
  val |= BIT1;
 if (info->if_mode & MGSL_INTERFACE_RL)
  val |= BIT0;
 wr_reg8(info, VCR, val);
}
