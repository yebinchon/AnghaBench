
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* m_pool_p ;
typedef TYPE_2__* m_link_p ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
struct TYPE_4__ {TYPE_2__* h; } ;


 scalar_t__ M_GET_MEM_CLUSTER () ;
 int SYM_MEM_CLUSTER_SIZE ;
 int SYM_MEM_SHIFT ;
 int printf (char*,int,void*) ;

__attribute__((used)) static void *___sym_malloc(m_pool_p mp, int size)
{
 int i = 0;
 int s = (1 << SYM_MEM_SHIFT);
 int j;
 void *a;
 m_link_p h = mp->h;

 if (size > SYM_MEM_CLUSTER_SIZE)
  return ((void*)0);

 while (size > s) {
  s <<= 1;
  ++i;
 }

 j = i;
 while (!h[j].next) {
  if (s == SYM_MEM_CLUSTER_SIZE) {
   h[j].next = (m_link_p) M_GET_MEM_CLUSTER();
   if (h[j].next)
    h[j].next->next = ((void*)0);
   break;
  }
  ++j;
  s <<= 1;
 }
 a = h[j].next;
 if (a) {
  h[j].next = h[j].next->next;
  while (j > i) {
   j -= 1;
   s >>= 1;
   h[j].next = (m_link_p) (a+s);
   h[j].next->next = ((void*)0);
  }
 }



 return a;
}
