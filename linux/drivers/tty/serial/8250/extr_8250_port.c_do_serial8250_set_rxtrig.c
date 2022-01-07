
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int mutex; } ;


 int do_set_rxtrig (struct tty_port*,unsigned char) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int do_serial8250_set_rxtrig(struct tty_port *port, unsigned char bytes)
{
 int ret;

 mutex_lock(&port->mutex);
 ret = do_set_rxtrig(port, bytes);
 mutex_unlock(&port->mutex);

 return ret;
}
