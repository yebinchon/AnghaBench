
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_serial {int dummy; } ;


 int F81534_FIFO_CONTROL_REG ;
 int F81534_LINE_STATUS_REG ;
 int F81534_MODEM_CONTROL_REG ;
 int F81534_MODEM_STATUS_REG ;
 int UART_FCR_CLEAR_RCVR ;
 int UART_FCR_CLEAR_XMIT ;
 int UART_FCR_ENABLE_FIFO ;
 int UART_LSR_BI ;
 int UART_MCR_LOOP ;
 int UART_MSR_CTS ;
 int UART_MSR_DCD ;
 int UART_MSR_DSR ;
 int UART_MSR_RI ;
 int f81534_get_phy_port_register (struct usb_serial*,int,int ,int*) ;
 int f81534_set_phy_port_register (struct usb_serial*,int,int ,int) ;
 int msleep (int) ;

__attribute__((used)) static bool f81534_check_port_hw_disabled(struct usb_serial *serial, int phy)
{
 int status;
 u8 old_mcr;
 u8 msr;
 u8 lsr;
 u8 msr_mask;

 msr_mask = UART_MSR_DCD | UART_MSR_RI | UART_MSR_DSR | UART_MSR_CTS;

 status = f81534_get_phy_port_register(serial, phy,
    F81534_MODEM_STATUS_REG, &msr);
 if (status)
  return 0;

 if ((msr & msr_mask) != msr_mask)
  return 0;

 status = f81534_set_phy_port_register(serial, phy,
    F81534_FIFO_CONTROL_REG, UART_FCR_ENABLE_FIFO |
    UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT);
 if (status)
  return 0;

 status = f81534_get_phy_port_register(serial, phy,
    F81534_MODEM_CONTROL_REG, &old_mcr);
 if (status)
  return 0;

 status = f81534_set_phy_port_register(serial, phy,
    F81534_MODEM_CONTROL_REG, UART_MCR_LOOP);
 if (status)
  return 0;

 status = f81534_set_phy_port_register(serial, phy,
    F81534_MODEM_CONTROL_REG, 0x0);
 if (status)
  return 0;

 msleep(60);

 status = f81534_get_phy_port_register(serial, phy,
    F81534_LINE_STATUS_REG, &lsr);
 if (status)
  return 0;

 status = f81534_set_phy_port_register(serial, phy,
    F81534_MODEM_CONTROL_REG, old_mcr);
 if (status)
  return 0;

 if ((lsr & UART_LSR_BI) == UART_LSR_BI)
  return 1;

 return 0;
}
