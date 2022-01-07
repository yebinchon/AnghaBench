
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_reply {int refcnt; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static void
lcs_get_reply(struct lcs_reply *reply)
{
 refcount_inc(&reply->refcnt);
}
