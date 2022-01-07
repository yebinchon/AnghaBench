
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kbd_data {int diacr; int accent_table_size; int port; TYPE_1__* accent_table; } ;
struct TYPE_2__ {int diacr; unsigned int base; unsigned int result; } ;


 int kbd_put_queue (int ,int) ;

__attribute__((used)) static unsigned int
handle_diacr(struct kbd_data *kbd, unsigned int ch)
{
 int i, d;

 d = kbd->diacr;
 kbd->diacr = 0;

 for (i = 0; i < kbd->accent_table_size; i++) {
  if (kbd->accent_table[i].diacr == d &&
      kbd->accent_table[i].base == ch)
   return kbd->accent_table[i].result;
 }

 if (ch == ' ' || ch == d)
  return d;

 kbd_put_queue(kbd->port, d);
 return ch;
}
