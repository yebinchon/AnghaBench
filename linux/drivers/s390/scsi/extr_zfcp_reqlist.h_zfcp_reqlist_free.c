
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_reqlist {int dummy; } ;


 int BUG_ON (int) ;
 int kfree (struct zfcp_reqlist*) ;
 int zfcp_reqlist_isempty (struct zfcp_reqlist*) ;

__attribute__((used)) static inline void zfcp_reqlist_free(struct zfcp_reqlist *rl)
{

 BUG_ON(!zfcp_reqlist_isempty(rl));

 kfree(rl);
}
