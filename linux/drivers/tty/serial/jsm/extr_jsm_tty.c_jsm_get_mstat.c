
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jsm_channel {unsigned char ch_mostat; unsigned char ch_mistat; TYPE_1__* ch_bd; } ;
struct TYPE_2__ {int pci_dev; } ;


 int IOCTL ;
 int TIOCM_CD ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_DTR ;
 int TIOCM_RI ;
 int TIOCM_RTS ;
 unsigned char UART_MCR_DTR ;
 unsigned char UART_MCR_RTS ;
 unsigned char UART_MSR_CTS ;
 unsigned char UART_MSR_DCD ;
 unsigned char UART_MSR_DSR ;
 unsigned char UART_MSR_RI ;
 int jsm_dbg (int ,int *,char*) ;

__attribute__((used)) static inline int jsm_get_mstat(struct jsm_channel *ch)
{
 unsigned char mstat;
 int result;

 jsm_dbg(IOCTL, &ch->ch_bd->pci_dev, "start\n");

 mstat = (ch->ch_mostat | ch->ch_mistat);

 result = 0;

 if (mstat & UART_MCR_DTR)
  result |= TIOCM_DTR;
 if (mstat & UART_MCR_RTS)
  result |= TIOCM_RTS;
 if (mstat & UART_MSR_CTS)
  result |= TIOCM_CTS;
 if (mstat & UART_MSR_DSR)
  result |= TIOCM_DSR;
 if (mstat & UART_MSR_RI)
  result |= TIOCM_RI;
 if (mstat & UART_MSR_DCD)
  result |= TIOCM_CD;

 jsm_dbg(IOCTL, &ch->ch_bd->pci_dev, "finish\n");
 return result;
}
