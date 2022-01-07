
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbd_struct {scalar_t__ ledmode; unsigned char ledflagstate; } ;


 scalar_t__ LED_SHOW_IOCTL ;
 int fg_console ;
 struct kbd_struct* kbd_table ;
 unsigned char ledioctl ;

__attribute__((used)) static inline unsigned char getleds(void)
{
 struct kbd_struct *kb = kbd_table + fg_console;

 if (kb->ledmode == LED_SHOW_IOCTL)
  return ledioctl;

 return kb->ledflagstate;
}
