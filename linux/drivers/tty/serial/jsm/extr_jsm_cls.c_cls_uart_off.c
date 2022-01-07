
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jsm_channel {TYPE_1__* ch_cls_uart; } ;
struct TYPE_2__ {int ier; } ;


 int writeb (int ,int *) ;

__attribute__((used)) static void cls_uart_off(struct jsm_channel *ch)
{

 writeb(0, &ch->ch_cls_uart->ier);
}
