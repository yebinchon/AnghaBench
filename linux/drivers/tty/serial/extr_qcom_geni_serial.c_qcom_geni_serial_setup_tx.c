
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {scalar_t__ membase; } ;


 int M_OPCODE_SHFT ;
 scalar_t__ SE_GENI_M_CMD0 ;
 scalar_t__ SE_UART_TX_TRANS_LEN ;
 int UART_START_TX ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void qcom_geni_serial_setup_tx(struct uart_port *uport, u32 xmit_size)
{
 u32 m_cmd;

 writel(xmit_size, uport->membase + SE_UART_TX_TRANS_LEN);
 m_cmd = UART_START_TX << M_OPCODE_SHFT;
 writel(m_cmd, uport->membase + SE_GENI_M_CMD0);
}
