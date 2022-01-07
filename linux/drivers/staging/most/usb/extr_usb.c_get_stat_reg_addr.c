
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct regs {int reg; int name; } ;


 int EFAULT ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int get_stat_reg_addr(const struct regs *regs, int size,
        const char *name, u16 *reg_addr)
{
 int i;

 for (i = 0; i < size; i++) {
  if (!strcmp(name, regs[i].name)) {
   *reg_addr = regs[i].reg;
   return 0;
  }
 }
 return -EFAULT;
}
