
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jsm_channel {int dummy; } ;


 int udelay (int) ;

__attribute__((used)) static void cls_flush_uart_read(struct jsm_channel *ch)
{
 if (!ch)
  return;
 udelay(10);
}
