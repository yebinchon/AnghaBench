
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zilog_channel {int control; int data; } ;


 unsigned char CRC_ERR ;
 int ERR_RES ;
 unsigned char PAR_ERR ;
 int R1 ;
 unsigned char Rx_CH_AV ;
 unsigned char Rx_OVR ;
 int ZSDELAY () ;
 int ZS_WSYNC (struct zilog_channel*) ;
 unsigned char read_zsreg (struct zilog_channel*,int ) ;
 unsigned char readb (int *) ;
 int writeb (int ,int *) ;

__attribute__((used)) static void ip22zilog_clear_fifo(struct zilog_channel *channel)
{
 int i;

 for (i = 0; i < 32; i++) {
  unsigned char regval;

  regval = readb(&channel->control);
  ZSDELAY();
  if (regval & Rx_CH_AV)
   break;

  regval = read_zsreg(channel, R1);
  readb(&channel->data);
  ZSDELAY();

  if (regval & (PAR_ERR | Rx_OVR | CRC_ERR)) {
   writeb(ERR_RES, &channel->control);
   ZSDELAY();
   ZS_WSYNC(channel);
  }
 }
}
