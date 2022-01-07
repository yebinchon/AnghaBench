
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int close_delay; int closing_wait; int kref; int * client_ops; int lock; int buf_mutex; int mutex; int delta_msr_wait; int open_wait; } ;


 int HZ ;
 int default_client_ops ;
 int init_waitqueue_head (int *) ;
 int kref_init (int *) ;
 int memset (struct tty_port*,int ,int) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int tty_buffer_init (struct tty_port*) ;

void tty_port_init(struct tty_port *port)
{
 memset(port, 0, sizeof(*port));
 tty_buffer_init(port);
 init_waitqueue_head(&port->open_wait);
 init_waitqueue_head(&port->delta_msr_wait);
 mutex_init(&port->mutex);
 mutex_init(&port->buf_mutex);
 spin_lock_init(&port->lock);
 port->close_delay = (50 * HZ) / 100;
 port->closing_wait = (3000 * HZ) / 100;
 port->client_ops = &default_client_ops;
 kref_init(&port->kref);
}
