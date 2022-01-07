
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct vc_data* d; } ;


 int WARN_CONSOLE_UNLOCKED () ;
 unsigned int console (struct inode*) ;
 unsigned int fg_console ;
 TYPE_1__* vc_cons ;

__attribute__((used)) static struct vc_data*
vcs_vc(struct inode *inode, int *viewed)
{
 unsigned int currcons = console(inode);

 WARN_CONSOLE_UNLOCKED();

 if (currcons == 0) {
  currcons = fg_console;
  if (viewed)
   *viewed = 1;
 } else {
  currcons--;
  if (viewed)
   *viewed = 0;
 }
 return vc_cons[currcons].d;
}
