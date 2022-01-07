
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIOCM_CAR ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_RNG ;
 int UART_MSR_CTS ;
 int UART_MSR_DCD ;
 int UART_MSR_DSR ;
 int UART_MSR_RI ;

__attribute__((used)) static inline int serial8250_MSR_to_TIOCM(int msr)
{
 int tiocm = 0;

 if (msr & UART_MSR_DCD)
  tiocm |= TIOCM_CAR;
 if (msr & UART_MSR_RI)
  tiocm |= TIOCM_RNG;
 if (msr & UART_MSR_DSR)
  tiocm |= TIOCM_DSR;
 if (msr & UART_MSR_CTS)
  tiocm |= TIOCM_CTS;

 return tiocm;
}
