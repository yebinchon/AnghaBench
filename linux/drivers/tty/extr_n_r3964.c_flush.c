
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* ops; } ;
struct r3964_info {struct tty_struct* tty; } ;
struct TYPE_2__ {int (* flush_chars ) (struct tty_struct*) ;} ;


 int stub1 (struct tty_struct*) ;

__attribute__((used)) static void flush(struct r3964_info *pInfo)
{
 struct tty_struct *tty = pInfo->tty;

 if (tty == ((void*)0) || tty->ops->flush_chars == ((void*)0))
  return;
 tty->ops->flush_chars(tty);
}
