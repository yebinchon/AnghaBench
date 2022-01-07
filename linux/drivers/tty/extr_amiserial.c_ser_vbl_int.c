
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_state {int IER; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int UART_IER_MSI ;
 int check_modem_status (struct serial_state*) ;

__attribute__((used)) static irqreturn_t ser_vbl_int( int irq, void *data)
{

 struct serial_state *info = data;




 if(info->IER & UART_IER_MSI)
   check_modem_status(info);
 return IRQ_HANDLED;
}
