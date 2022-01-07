
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_slave {int * family_data; } ;


 int kfree (int *) ;

__attribute__((used)) static void w1_f1C_remove_slave(struct w1_slave *sl)
{
 kfree(sl->family_data);
 sl->family_data = ((void*)0);
}
