
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recorded_ref {int list; int * full_path; int dir_gen; int dir; } ;
struct list_head {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct recorded_ref* kmalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static int dup_ref(struct recorded_ref *ref, struct list_head *list)
{
 struct recorded_ref *new;

 new = kmalloc(sizeof(*ref), GFP_KERNEL);
 if (!new)
  return -ENOMEM;

 new->dir = ref->dir;
 new->dir_gen = ref->dir_gen;
 new->full_path = ((void*)0);
 INIT_LIST_HEAD(&new->list);
 list_add_tail(&new->list, list);
 return 0;
}
