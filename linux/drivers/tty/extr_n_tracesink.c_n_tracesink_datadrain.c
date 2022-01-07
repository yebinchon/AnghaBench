
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* write ) (TYPE_2__*,int *,int) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_2__*,int *,int) ;
 TYPE_2__* this_tty ;
 int writelock ;

void n_tracesink_datadrain(u8 *buf, int count)
{
 mutex_lock(&writelock);

 if ((buf != ((void*)0)) && (count > 0) && (this_tty != ((void*)0)))
  this_tty->ops->write(this_tty, buf, count);

 mutex_unlock(&writelock);
}
