
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct dasd_mchunk {unsigned long size; int list; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 int list_add (int *,struct list_head*) ;

__attribute__((used)) static inline void
dasd_init_chunklist(struct list_head *chunk_list, void *mem,
      unsigned long size)
{
 struct dasd_mchunk *chunk;

 INIT_LIST_HEAD(chunk_list);
 chunk = (struct dasd_mchunk *) mem;
 chunk->size = size - sizeof(struct dasd_mchunk);
 list_add(&chunk->list, chunk_list);
}
