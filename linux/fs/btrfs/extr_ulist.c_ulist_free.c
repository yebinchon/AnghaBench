
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulist {int dummy; } ;


 int kfree (struct ulist*) ;
 int ulist_release (struct ulist*) ;

void ulist_free(struct ulist *ulist)
{
 if (!ulist)
  return;
 ulist_release(ulist);
 kfree(ulist);
}
