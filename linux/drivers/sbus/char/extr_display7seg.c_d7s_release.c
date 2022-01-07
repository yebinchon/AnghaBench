
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct d7s {int regs; scalar_t__ flipped; } ;


 int D7S_FLIP ;
 scalar_t__ atomic_dec_and_test (int *) ;
 struct d7s* d7s_device ;
 int d7s_users ;
 int readb (int ) ;
 int sol_compat ;
 int writeb (int ,int ) ;

__attribute__((used)) static int d7s_release(struct inode *inode, struct file *f)
{




 if (atomic_dec_and_test(&d7s_users) && !sol_compat) {
  struct d7s *p = d7s_device;
  u8 regval = 0;

  regval = readb(p->regs);
  if (p->flipped)
   regval |= D7S_FLIP;
  else
   regval &= ~D7S_FLIP;
  writeb(regval, p->regs);
 }

 return 0;
}
