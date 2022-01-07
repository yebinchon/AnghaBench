
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int item; } ;


 TYPE_1__ dev ;
 int init_fake () ;
 int unittest (int,char*) ;

void test0(void)
{
 init_fake();
 unittest(dev.item != 11, "negative result\n");
 unittest(dev.item == 10, "positive result\n");
}
