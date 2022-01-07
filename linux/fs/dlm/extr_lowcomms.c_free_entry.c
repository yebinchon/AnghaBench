
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writequeue_entry {int page; } ;


 int __free_page (int ) ;
 int kfree (struct writequeue_entry*) ;

__attribute__((used)) static void free_entry(struct writequeue_entry *e)
{
 __free_page(e->page);
 kfree(e);
}
