
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct hvc_struct* driver_data; } ;
struct hvc_struct {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* tiocmset ) (struct hvc_struct*,unsigned int,unsigned int) ;} ;


 int EINVAL ;
 int stub1 (struct hvc_struct*,unsigned int,unsigned int) ;

__attribute__((used)) static int hvc_tiocmset(struct tty_struct *tty,
   unsigned int set, unsigned int clear)
{
 struct hvc_struct *hp = tty->driver_data;

 if (!hp || !hp->ops->tiocmset)
  return -EINVAL;
 return hp->ops->tiocmset(hp, set, clear);
}
