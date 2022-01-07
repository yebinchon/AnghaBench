
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exar8250 {scalar_t__ virt; TYPE_1__* board; } ;
struct TYPE_2__ {int num_ports; } ;


 scalar_t__ UART_EXAR_INT0 ;
 int readb (scalar_t__) ;

__attribute__((used)) static inline void exar_misc_clear(struct exar8250 *priv)
{

 readb(priv->virt + UART_EXAR_INT0);


 if (priv->board->num_ports > 8)
  readb(priv->virt + 0x2000 + UART_EXAR_INT0);
}
