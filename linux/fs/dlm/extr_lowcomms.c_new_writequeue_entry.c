
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writequeue_entry {struct connection* con; scalar_t__ users; scalar_t__ end; scalar_t__ len; scalar_t__ offset; int page; } ;
struct connection {int dummy; } ;
typedef int gfp_t ;


 int alloc_page (int ) ;
 int kfree (struct writequeue_entry*) ;
 struct writequeue_entry* kmalloc (int,int ) ;

__attribute__((used)) static struct writequeue_entry *new_writequeue_entry(struct connection *con,
           gfp_t allocation)
{
 struct writequeue_entry *entry;

 entry = kmalloc(sizeof(struct writequeue_entry), allocation);
 if (!entry)
  return ((void*)0);

 entry->page = alloc_page(allocation);
 if (!entry->page) {
  kfree(entry);
  return ((void*)0);
 }

 entry->offset = 0;
 entry->len = 0;
 entry->end = 0;
 entry->users = 0;
 entry->con = con;

 return entry;
}
