
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int type; } ;


 int PORT_MSM ;
 int UART_CONFIG_TYPE ;
 int qcom_geni_serial_request_port (struct uart_port*) ;

__attribute__((used)) static void qcom_geni_serial_config_port(struct uart_port *uport, int cfg_flags)
{
 if (cfg_flags & UART_CONFIG_TYPE) {
  uport->type = PORT_MSM;
  qcom_geni_serial_request_port(uport);
 }
}
