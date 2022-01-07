
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int idle_mode; } ;


 unsigned short BIT4 ;
 unsigned short BIT5 ;
 unsigned short BIT6 ;


 int HDLC_TXIDLE_CUSTOM_16 ;
 int HDLC_TXIDLE_CUSTOM_8 ;



 int TCR ;
 int TIR ;
 int TPR ;
 unsigned short rd_reg16 (struct slgt_info*,int ) ;
 int wr_reg16 (struct slgt_info*,int ,unsigned short) ;
 int wr_reg8 (struct slgt_info*,int ,unsigned char) ;

__attribute__((used)) static void tx_set_idle(struct slgt_info *info)
{
 unsigned char val;
 unsigned short tcr;




 tcr = rd_reg16(info, TCR);
 if (info->idle_mode & HDLC_TXIDLE_CUSTOM_16) {

  tcr = (tcr & ~(BIT6 + BIT5)) | BIT4;

  wr_reg8(info, TPR, (unsigned char)((info->idle_mode >> 8) & 0xff));
 } else if (!(tcr & BIT6)) {

  tcr &= ~(BIT5 + BIT4);
 }
 wr_reg16(info, TCR, tcr);

 if (info->idle_mode & (HDLC_TXIDLE_CUSTOM_8 | HDLC_TXIDLE_CUSTOM_16)) {

  val = (unsigned char)(info->idle_mode & 0xff);
 } else {

  switch(info->idle_mode)
  {
  case 130: val = 0x7e; break;
  case 131:
  case 132: val = 0xaa; break;
  case 128:
  case 129: val = 0x00; break;
  default: val = 0xff;
  }
 }

 wr_reg8(info, TIR, val);
}
