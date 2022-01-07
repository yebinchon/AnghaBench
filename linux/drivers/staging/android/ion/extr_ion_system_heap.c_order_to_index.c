
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 int NUM_ORDERS ;
 unsigned int* orders ;

__attribute__((used)) static int order_to_index(unsigned int order)
{
 int i;

 for (i = 0; i < NUM_ORDERS; i++)
  if (order == orders[i])
   return i;
 BUG();
 return -1;
}
