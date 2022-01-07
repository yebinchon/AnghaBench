
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct sym_tcb {TYPE_1__* starget; } ;
struct sym_hcb {struct sym_tcb* target; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*,char*) ;
 int printf (char*) ;
 int spi_print_msg (int *) ;

__attribute__((used)) static void sym_print_nego_msg(struct sym_hcb *np, int target, char *label, u_char *msg)
{
 struct sym_tcb *tp = &np->target[target];
 dev_info(&tp->starget->dev, "%s: ", label);

 spi_print_msg(msg);
 printf("\n");
}
