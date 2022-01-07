
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct kgdb_nmi_tty_priv {int port; int fifo; TYPE_1__ timer; } ;


 int HZ ;
 int TTY_NORMAL ;
 int add_timer (TYPE_1__*) ;
 int atomic_read (int *) ;
 struct kgdb_nmi_tty_priv* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int kfifo_len (int *) ;
 scalar_t__ kfifo_out (int *,char*,int) ;
 int kgdb_nmi_num_readers ;
 scalar_t__ likely (int) ;
 struct kgdb_nmi_tty_priv* priv ;
 int timer ;
 int tty_flip_buffer_push (int *) ;
 int tty_insert_flip_char (int *,char,int ) ;

__attribute__((used)) static void kgdb_nmi_tty_receiver(struct timer_list *t)
{
 struct kgdb_nmi_tty_priv *priv = from_timer(priv, t, timer);
 char ch;

 priv->timer.expires = jiffies + (HZ/100);
 add_timer(&priv->timer);

 if (likely(!atomic_read(&kgdb_nmi_num_readers) ||
     !kfifo_len(&priv->fifo)))
  return;

 while (kfifo_out(&priv->fifo, &ch, 1))
  tty_insert_flip_char(&priv->port, ch, TTY_NORMAL);
 tty_flip_buffer_push(&priv->port);
}
