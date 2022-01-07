
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 unsigned short NISTC_AO_STATUS1_BC_TC ;
 unsigned short NISTC_AO_STATUS1_OVERRUN ;
 unsigned short NISTC_AO_STATUS1_START ;
 unsigned short NISTC_AO_STATUS1_START1 ;
 unsigned short NISTC_AO_STATUS1_UC_TC ;
 unsigned short NISTC_AO_STATUS1_UI2_TC ;
 unsigned short NISTC_AO_STATUS1_UPDATE ;
 unsigned short NISTC_INTB_ACK_AO_BC_TC ;
 unsigned short NISTC_INTB_ACK_AO_ERR ;
 unsigned short NISTC_INTB_ACK_AO_START ;
 unsigned short NISTC_INTB_ACK_AO_START1 ;
 unsigned short NISTC_INTB_ACK_AO_UC_TC ;
 unsigned short NISTC_INTB_ACK_AO_UI2_TC ;
 unsigned short NISTC_INTB_ACK_AO_UPDATE ;
 int NISTC_INTB_ACK_REG ;
 int ni_stc_writew (struct comedi_device*,unsigned short,int ) ;

__attribute__((used)) static void ack_b_interrupt(struct comedi_device *dev, unsigned short b_status)
{
 unsigned short ack = 0;

 if (b_status & NISTC_AO_STATUS1_BC_TC)
  ack |= NISTC_INTB_ACK_AO_BC_TC;
 if (b_status & NISTC_AO_STATUS1_OVERRUN)
  ack |= NISTC_INTB_ACK_AO_ERR;
 if (b_status & NISTC_AO_STATUS1_START)
  ack |= NISTC_INTB_ACK_AO_START;
 if (b_status & NISTC_AO_STATUS1_START1)
  ack |= NISTC_INTB_ACK_AO_START1;
 if (b_status & NISTC_AO_STATUS1_UC_TC)
  ack |= NISTC_INTB_ACK_AO_UC_TC;
 if (b_status & NISTC_AO_STATUS1_UI2_TC)
  ack |= NISTC_INTB_ACK_AO_UI2_TC;
 if (b_status & NISTC_AO_STATUS1_UPDATE)
  ack |= NISTC_INTB_ACK_AO_UPDATE;
 if (ack)
  ni_stc_writew(dev, ack, NISTC_INTB_ACK_REG);
}
