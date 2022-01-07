
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int paste_wait; } ;
struct tty_struct {struct vc_data* driver_data; } ;


 int wake_up_interruptible (int *) ;

__attribute__((used)) static void con_unthrottle(struct tty_struct *tty)
{
 struct vc_data *vc = tty->driver_data;

 wake_up_interruptible(&vc->paste_wait);
}
