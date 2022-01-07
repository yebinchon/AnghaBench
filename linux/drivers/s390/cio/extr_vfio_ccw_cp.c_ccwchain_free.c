
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccwchain {int next; } ;


 int kfree (struct ccwchain*) ;
 int list_del (int *) ;

__attribute__((used)) static void ccwchain_free(struct ccwchain *chain)
{
 list_del(&chain->next);
 kfree(chain);
}
