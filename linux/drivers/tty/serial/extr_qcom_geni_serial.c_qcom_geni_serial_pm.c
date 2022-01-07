
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct qcom_geni_serial_port {int se; } ;


 unsigned int UART_PM_STATE_OFF ;
 unsigned int UART_PM_STATE_ON ;
 unsigned int UART_PM_STATE_UNDEFINED ;
 int geni_se_resources_off (int *) ;
 int geni_se_resources_on (int *) ;
 struct qcom_geni_serial_port* to_dev_port (struct uart_port*,struct uart_port*) ;

__attribute__((used)) static void qcom_geni_serial_pm(struct uart_port *uport,
  unsigned int new_state, unsigned int old_state)
{
 struct qcom_geni_serial_port *port = to_dev_port(uport, uport);


 if (old_state == UART_PM_STATE_UNDEFINED)
  old_state = UART_PM_STATE_OFF;

 if (new_state == UART_PM_STATE_ON && old_state == UART_PM_STATE_OFF)
  geni_se_resources_on(&port->se);
 else if (new_state == UART_PM_STATE_OFF &&
   old_state == UART_PM_STATE_ON)
  geni_se_resources_off(&port->se);
}
