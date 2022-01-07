
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct tty_ldisc_ops {int dummy; } ;
struct tty_ldisc {struct tty_struct* tty; struct tty_ldisc_ops* ops; } ;


 int CAP_SYS_MODULE ;
 int EINVAL ;
 int EPERM ;
 struct tty_ldisc* ERR_CAST (struct tty_ldisc_ops*) ;
 struct tty_ldisc* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct tty_ldisc_ops*) ;
 int NR_LDISCS ;
 int N_TTY ;
 int __GFP_NOFAIL ;
 int capable (int ) ;
 struct tty_ldisc_ops* get_ldops (int) ;
 struct tty_ldisc* kmalloc (int,int) ;
 int request_module (char*,int) ;
 int tty_ldisc_autoload ;

__attribute__((used)) static struct tty_ldisc *tty_ldisc_get(struct tty_struct *tty, int disc)
{
 struct tty_ldisc *ld;
 struct tty_ldisc_ops *ldops;

 if (disc < N_TTY || disc >= NR_LDISCS)
  return ERR_PTR(-EINVAL);





 ldops = get_ldops(disc);
 if (IS_ERR(ldops)) {
  if (!capable(CAP_SYS_MODULE) && !tty_ldisc_autoload)
   return ERR_PTR(-EPERM);
  request_module("tty-ldisc-%d", disc);
  ldops = get_ldops(disc);
  if (IS_ERR(ldops))
   return ERR_CAST(ldops);
 }





 ld = kmalloc(sizeof(struct tty_ldisc), GFP_KERNEL | __GFP_NOFAIL);
 ld->ops = ldops;
 ld->tty = tty;

 return ld;
}
