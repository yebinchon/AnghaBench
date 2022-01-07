
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct tty3270* driver_data; } ;
struct tty3270 {int view; } ;


 int raw3270_put_view (int *) ;

__attribute__((used)) static void tty3270_cleanup(struct tty_struct *tty)
{
 struct tty3270 *tp = tty->driver_data;

 if (tp) {
  tty->driver_data = ((void*)0);
  raw3270_put_view(&tp->view);
 }
}
