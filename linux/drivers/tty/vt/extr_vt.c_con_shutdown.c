
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * tty; } ;
struct vc_data {TYPE_1__ port; } ;
struct tty_struct {struct vc_data* driver_data; } ;


 int BUG_ON (int ) ;
 int console_lock () ;
 int console_unlock () ;

__attribute__((used)) static void con_shutdown(struct tty_struct *tty)
{
 struct vc_data *vc = tty->driver_data;
 BUG_ON(vc == ((void*)0));
 console_lock();
 vc->port.tty = ((void*)0);
 console_unlock();
}
