
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct men_z135_port {int stat_reg; int port; } ;


 int MEN_Z135_MSR_CTS ;
 int MEN_Z135_MSR_DCD ;
 int MEN_Z135_MSR_DCTS ;
 int MEN_Z135_MSR_DDCD ;
 int uart_handle_cts_change (int *,int) ;
 int uart_handle_dcd_change (int *,int) ;

__attribute__((used)) static void men_z135_handle_modem_status(struct men_z135_port *uart)
{
 u8 msr;

 msr = (uart->stat_reg >> 8) & 0xff;

 if (msr & MEN_Z135_MSR_DDCD)
  uart_handle_dcd_change(&uart->port,
    msr & MEN_Z135_MSR_DCD);
 if (msr & MEN_Z135_MSR_DCTS)
  uart_handle_cts_change(&uart->port,
    msr & MEN_Z135_MSR_CTS);
}
