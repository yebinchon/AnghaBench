
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbd_data {int port; scalar_t__ diacr; } ;


 unsigned char handle_diacr (struct kbd_data*,unsigned char) ;
 int kbd_put_queue (int ,unsigned char) ;

__attribute__((used)) static void
k_self(struct kbd_data *kbd, unsigned char value)
{
 if (kbd->diacr)
  value = handle_diacr(kbd, value);
 kbd_put_queue(kbd->port, value);
}
