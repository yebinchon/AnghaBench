
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handler {int dummy; } ;
struct input_dev {int keybit; int evbit; } ;


 int BTN_MISC ;
 int EV_KEY ;
 int EV_SND ;
 int KEY_BRL_DOT1 ;
 int KEY_BRL_DOT10 ;
 int KEY_RESERVED ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static bool kbd_match(struct input_handler *handler, struct input_dev *dev)
{
 int i;

 if (test_bit(EV_SND, dev->evbit))
  return 1;

 if (test_bit(EV_KEY, dev->evbit)) {
  for (i = KEY_RESERVED; i < BTN_MISC; i++)
   if (test_bit(i, dev->keybit))
    return 1;
  for (i = KEY_BRL_DOT1; i <= KEY_BRL_DOT10; i++)
   if (test_bit(i, dev->keybit))
    return 1;
 }

 return 0;
}
