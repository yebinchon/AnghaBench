
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct platform_device {int * resource; int dev; } ;
struct d7s {int regs; scalar_t__ flipped; } ;


 int D7S_FLIP ;
 int d7s_miscdev ;
 struct d7s* dev_get_drvdata (int *) ;
 int misc_deregister (int *) ;
 int of_iounmap (int *,int ,int) ;
 int readb (int ) ;
 scalar_t__ sol_compat ;
 int writeb (int ,int ) ;

__attribute__((used)) static int d7s_remove(struct platform_device *op)
{
 struct d7s *p = dev_get_drvdata(&op->dev);
 u8 regs = readb(p->regs);


 if (sol_compat) {
  if (p->flipped)
   regs |= D7S_FLIP;
  else
   regs &= ~D7S_FLIP;
  writeb(regs, p->regs);
 }

 misc_deregister(&d7s_miscdev);
 of_iounmap(&op->resource[0], p->regs, sizeof(u8));

 return 0;
}
