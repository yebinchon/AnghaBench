
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_reqlist {int * buckets; } ;


 unsigned int ZFCP_REQ_LIST_BUCKETS ;
 int list_empty (int *) ;

__attribute__((used)) static inline int zfcp_reqlist_isempty(struct zfcp_reqlist *rl)
{
 unsigned int i;

 for (i = 0; i < ZFCP_REQ_LIST_BUCKETS; i++)
  if (!list_empty(&rl->buckets[i]))
   return 0;
 return 1;
}
