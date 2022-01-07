
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct hvc_struct* driver_data; } ;
struct hvc_struct {int port; } ;


 int tty_port_put (int *) ;

__attribute__((used)) static void hvc_cleanup(struct tty_struct *tty)
{
 struct hvc_struct *hp = tty->driver_data;

 tty_port_put(&hp->port);
}
