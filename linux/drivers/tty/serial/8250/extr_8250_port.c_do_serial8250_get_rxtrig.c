
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int mutex; } ;


 int do_get_rxtrig (struct tty_port*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int do_serial8250_get_rxtrig(struct tty_port *port)
{
 int rxtrig_bytes;

 mutex_lock(&port->mutex);
 rxtrig_bytes = do_get_rxtrig(port);
 mutex_unlock(&port->mutex);

 return rxtrig_bytes;
}
