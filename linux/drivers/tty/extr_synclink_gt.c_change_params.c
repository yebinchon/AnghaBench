
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_5__* tty; } ;
struct TYPE_12__ {int data_bits; int stop_bits; int data_rate; int parity; } ;
struct slgt_info {int signals; int timeout; int read_status_mask; int ignore_status_mask; TYPE_3__ port; TYPE_2__ params; int device_name; } ;
struct TYPE_11__ {unsigned int c_cflag; } ;
struct TYPE_14__ {TYPE_1__ termios; } ;


 int ASYNC_PARITY_EVEN ;
 int ASYNC_PARITY_NONE ;
 int ASYNC_PARITY_ODD ;
 unsigned int CBAUD ;
 unsigned int CLOCAL ;
 unsigned int CRTSCTS ;




 unsigned int CSIZE ;
 unsigned int CSTOPB ;
 int DBGINFO (char*) ;
 int HZ ;
 int IRQ_RXOVER ;
 scalar_t__ I_BRKINT (TYPE_5__*) ;
 scalar_t__ I_IGNBRK (TYPE_5__*) ;
 scalar_t__ I_IGNPAR (TYPE_5__*) ;
 scalar_t__ I_INPCK (TYPE_5__*) ;
 scalar_t__ I_PARMRK (TYPE_5__*) ;
 int MASK_BREAK ;
 int MASK_FRAMING ;
 int MASK_OVERRUN ;
 int MASK_PARITY ;
 unsigned int PARENB ;
 unsigned int PARODD ;
 int SerialSignal_DTR ;
 int SerialSignal_RTS ;
 int program_hw (struct slgt_info*) ;
 int tty_get_baud_rate (TYPE_5__*) ;
 int tty_port_set_check_carrier (TYPE_3__*,unsigned int) ;
 int tty_port_set_cts_flow (TYPE_3__*,unsigned int) ;

__attribute__((used)) static void change_params(struct slgt_info *info)
{
 unsigned cflag;
 int bits_per_char;

 if (!info->port.tty)
  return;
 DBGINFO(("%s change_params\n", info->device_name));

 cflag = info->port.tty->termios.c_cflag;



  if (cflag & CBAUD)
  info->signals |= SerialSignal_RTS | SerialSignal_DTR;
 else
  info->signals &= ~(SerialSignal_RTS | SerialSignal_DTR);



 switch (cflag & CSIZE) {
 case 131: info->params.data_bits = 5; break;
 case 130: info->params.data_bits = 6; break;
 case 129: info->params.data_bits = 7; break;
 case 128: info->params.data_bits = 8; break;
 default: info->params.data_bits = 7; break;
 }

 info->params.stop_bits = (cflag & CSTOPB) ? 2 : 1;

 if (cflag & PARENB)
  info->params.parity = (cflag & PARODD) ? ASYNC_PARITY_ODD : ASYNC_PARITY_EVEN;
 else
  info->params.parity = ASYNC_PARITY_NONE;




 bits_per_char = info->params.data_bits +
   info->params.stop_bits + 1;

 info->params.data_rate = tty_get_baud_rate(info->port.tty);

 if (info->params.data_rate) {
  info->timeout = (32*HZ*bits_per_char) /
    info->params.data_rate;
 }
 info->timeout += HZ/50;

 tty_port_set_cts_flow(&info->port, cflag & CRTSCTS);
 tty_port_set_check_carrier(&info->port, ~cflag & CLOCAL);



 info->read_status_mask = IRQ_RXOVER;
 if (I_INPCK(info->port.tty))
  info->read_status_mask |= MASK_PARITY | MASK_FRAMING;
  if (I_BRKINT(info->port.tty) || I_PARMRK(info->port.tty))
   info->read_status_mask |= MASK_BREAK;
 if (I_IGNPAR(info->port.tty))
  info->ignore_status_mask |= MASK_PARITY | MASK_FRAMING;
 if (I_IGNBRK(info->port.tty)) {
  info->ignore_status_mask |= MASK_BREAK;



  if (I_IGNPAR(info->port.tty))
   info->ignore_status_mask |= MASK_OVERRUN;
 }

 program_hw(info);
}
