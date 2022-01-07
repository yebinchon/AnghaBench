
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct raw3215_info {int port; } ;


 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (int *) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static void raw3215_wakeup(unsigned long data)
{
 struct raw3215_info *raw = (struct raw3215_info *) data;
 struct tty_struct *tty;

 tty = tty_port_tty_get(&raw->port);
 if (tty) {
  tty_wakeup(tty);
  tty_kref_put(tty);
 }
}
