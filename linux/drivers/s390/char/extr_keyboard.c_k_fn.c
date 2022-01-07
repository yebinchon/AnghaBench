
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbd_data {scalar_t__* func_table; int port; } ;


 int kbd_puts_queue (int ,scalar_t__) ;

__attribute__((used)) static void
k_fn(struct kbd_data *kbd, unsigned char value)
{
 if (kbd->func_table[value])
  kbd_puts_queue(kbd->port, kbd->func_table[value]);
}
