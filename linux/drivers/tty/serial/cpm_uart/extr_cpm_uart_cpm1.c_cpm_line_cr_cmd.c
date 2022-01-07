
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_cpm_port {int command; } ;


 int cpm_command (int ,int) ;

void cpm_line_cr_cmd(struct uart_cpm_port *port, int cmd)
{
 cpm_command(port->command, cmd);
}
