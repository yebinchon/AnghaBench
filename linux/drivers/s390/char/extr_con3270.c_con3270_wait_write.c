
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct con3270 {TYPE_1__ view; int write; } ;


 int barrier () ;
 int raw3270_wait_cons_dev (int ) ;

__attribute__((used)) static void
con3270_wait_write(struct con3270 *cp)
{
 while (!cp->write) {
  raw3270_wait_cons_dev(cp->view.dev);
  barrier();
 }
}
