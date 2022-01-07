
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_4__ {int dsr; int rng; } ;
struct TYPE_5__ {TYPE_1__ icount; } ;
struct tegra_uart_port {TYPE_2__ uport; } ;


 int UART_MSR ;
 unsigned long UART_MSR_ANY_DELTA ;
 unsigned long UART_MSR_CTS ;
 unsigned long UART_MSR_DCD ;
 unsigned long UART_MSR_DCTS ;
 unsigned long UART_MSR_DDCD ;
 unsigned long UART_MSR_DDSR ;
 unsigned long UART_MSR_TERI ;
 unsigned long tegra_uart_read (struct tegra_uart_port*,int ) ;
 struct tegra_uart_port* to_tegra_uport (struct uart_port*) ;
 int uart_handle_cts_change (TYPE_2__*,unsigned long) ;
 int uart_handle_dcd_change (TYPE_2__*,unsigned long) ;

__attribute__((used)) static void tegra_uart_handle_modem_signal_change(struct uart_port *u)
{
 struct tegra_uart_port *tup = to_tegra_uport(u);
 unsigned long msr;

 msr = tegra_uart_read(tup, UART_MSR);
 if (!(msr & UART_MSR_ANY_DELTA))
  return;

 if (msr & UART_MSR_TERI)
  tup->uport.icount.rng++;
 if (msr & UART_MSR_DDSR)
  tup->uport.icount.dsr++;

 if (msr & UART_MSR_DDCD)
  uart_handle_dcd_change(&tup->uport, msr & UART_MSR_DCD);

 if (msr & UART_MSR_DCTS)
  uart_handle_cts_change(&tup->uport, msr & UART_MSR_CTS);
}
