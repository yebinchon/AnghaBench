
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writequeue_entry {int offset; scalar_t__ len; scalar_t__ users; int list; } ;


 int free_entry (struct writequeue_entry*) ;
 int list_del (int *) ;

__attribute__((used)) static void writequeue_entry_complete(struct writequeue_entry *e, int completed)
{
 e->offset += completed;
 e->len -= completed;

 if (e->len == 0 && e->users == 0) {
  list_del(&e->list);
  free_entry(e);
 }
}
