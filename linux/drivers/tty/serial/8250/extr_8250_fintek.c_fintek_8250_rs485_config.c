
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct serial_rs485 {int flags; int delay_rts_before_send; int delay_rts_after_send; struct serial_rs485* padding; } ;
struct uart_port {struct serial_rs485 rs485; struct fintek_8250* private_data; } ;
struct fintek_8250 {int base_port; scalar_t__ index; int key; } ;


 int EBUSY ;
 int EINVAL ;
 int LDN ;
 int RS485 ;
 scalar_t__ RS485_URA ;
 scalar_t__ RTS_INVERT ;
 scalar_t__ RXW4C_IRA ;
 int SER_RS485_ENABLED ;
 int SER_RS485_RTS_AFTER_SEND ;
 int SER_RS485_RTS_ON_SEND ;
 scalar_t__ TXW4C_IRA ;
 scalar_t__ fintek_8250_enter_key (int ,int ) ;
 int fintek_8250_exit_key (int ) ;
 int memset (struct serial_rs485*,int ,int) ;
 int sio_write_reg (struct fintek_8250*,int ,scalar_t__) ;

__attribute__((used)) static int fintek_8250_rs485_config(struct uart_port *port,
         struct serial_rs485 *rs485)
{
 uint8_t config = 0;
 struct fintek_8250 *pdata = port->private_data;

 if (!pdata)
  return -EINVAL;


 if (!(rs485->flags & SER_RS485_RTS_ON_SEND) ==
   !(rs485->flags & SER_RS485_RTS_AFTER_SEND))
  return -EINVAL;

 if (rs485->flags & SER_RS485_ENABLED) {
  memset(rs485->padding, 0, sizeof(rs485->padding));
  config |= RS485_URA;
 } else {
  memset(rs485, 0, sizeof(*rs485));
 }

 rs485->flags &= SER_RS485_ENABLED | SER_RS485_RTS_ON_SEND |
   SER_RS485_RTS_AFTER_SEND;


 if (pdata->index) {
  rs485->delay_rts_before_send = 0;
  rs485->delay_rts_after_send = 0;
 }

 if (rs485->delay_rts_before_send) {
  rs485->delay_rts_before_send = 1;
  config |= TXW4C_IRA;
 }

 if (rs485->delay_rts_after_send) {
  rs485->delay_rts_after_send = 1;
  config |= RXW4C_IRA;
 }

 if (rs485->flags & SER_RS485_RTS_ON_SEND)
  config |= RTS_INVERT;

 if (fintek_8250_enter_key(pdata->base_port, pdata->key))
  return -EBUSY;

 sio_write_reg(pdata, LDN, pdata->index);
 sio_write_reg(pdata, RS485, config);
 fintek_8250_exit_key(pdata->base_port);

 port->rs485 = *rs485;

 return 0;
}
