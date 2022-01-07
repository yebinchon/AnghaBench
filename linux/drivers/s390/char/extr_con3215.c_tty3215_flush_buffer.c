
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ driver_data; } ;
struct raw3215_info {int dummy; } ;


 int raw3215_flush_buffer (struct raw3215_info*) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static void tty3215_flush_buffer(struct tty_struct *tty)
{
 struct raw3215_info *raw;

 raw = (struct raw3215_info *) tty->driver_data;
 raw3215_flush_buffer(raw);
 tty_wakeup(tty);
}
