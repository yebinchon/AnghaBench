
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct hvcs_struct* driver_data; } ;
struct hvcs_struct {int port; } ;


 int tty_port_put (int *) ;

__attribute__((used)) static void hvcs_cleanup(struct tty_struct * tty)
{
 struct hvcs_struct *hvcsd = tty->driver_data;

 tty_port_put(&hvcsd->port);
}
