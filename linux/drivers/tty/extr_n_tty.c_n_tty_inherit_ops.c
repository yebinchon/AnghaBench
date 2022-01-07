
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_ldisc_ops {scalar_t__ flags; scalar_t__ refcount; int * owner; } ;


 struct tty_ldisc_ops n_tty_ops ;

void n_tty_inherit_ops(struct tty_ldisc_ops *ops)
{
 *ops = n_tty_ops;
 ops->owner = ((void*)0);
 ops->refcount = ops->flags = 0;
}
