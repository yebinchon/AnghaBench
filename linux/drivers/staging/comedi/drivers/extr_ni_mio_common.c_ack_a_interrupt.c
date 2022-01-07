
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 unsigned short NISTC_AI_STATUS1_OVER ;
 unsigned short NISTC_AI_STATUS1_SC_TC ;
 unsigned short NISTC_AI_STATUS1_START ;
 unsigned short NISTC_AI_STATUS1_START1 ;
 unsigned short NISTC_AI_STATUS1_STOP ;
 unsigned short NISTC_INTA_ACK_AI_ERR ;
 unsigned short NISTC_INTA_ACK_AI_SC_TC ;
 unsigned short NISTC_INTA_ACK_AI_START ;
 unsigned short NISTC_INTA_ACK_AI_START1 ;
 unsigned short NISTC_INTA_ACK_AI_STOP ;
 int NISTC_INTA_ACK_REG ;
 int ni_stc_writew (struct comedi_device*,unsigned short,int ) ;

__attribute__((used)) static void ack_a_interrupt(struct comedi_device *dev, unsigned short a_status)
{
 unsigned short ack = 0;

 if (a_status & NISTC_AI_STATUS1_SC_TC)
  ack |= NISTC_INTA_ACK_AI_SC_TC;
 if (a_status & NISTC_AI_STATUS1_START1)
  ack |= NISTC_INTA_ACK_AI_START1;
 if (a_status & NISTC_AI_STATUS1_START)
  ack |= NISTC_INTA_ACK_AI_START;
 if (a_status & NISTC_AI_STATUS1_STOP)
  ack |= NISTC_INTA_ACK_AI_STOP;
 if (a_status & NISTC_AI_STATUS1_OVER)
  ack |= NISTC_INTA_ACK_AI_ERR;
 if (ack)
  ni_stc_writew(dev, ack, NISTC_INTA_ACK_REG);
}
