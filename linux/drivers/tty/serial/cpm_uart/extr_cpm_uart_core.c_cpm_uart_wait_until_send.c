
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_cpm_port {int wait_closing; } ;


 int TASK_UNINTERRUPTIBLE ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;

inline void cpm_uart_wait_until_send(struct uart_cpm_port *pinfo)
{
 set_current_state(TASK_UNINTERRUPTIBLE);
 schedule_timeout(pinfo->wait_closing);
}
