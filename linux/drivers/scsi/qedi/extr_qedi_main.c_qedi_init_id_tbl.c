
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct qedi_portid_tbl {int table; int lock; void* next; void* max; void* start; } ;


 int BITS_TO_LONGS (void*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kcalloc (int ,int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int qedi_init_id_tbl(struct qedi_portid_tbl *id_tbl, u16 size,
       u16 start_id, u16 next)
{
 id_tbl->start = start_id;
 id_tbl->max = size;
 id_tbl->next = next;
 spin_lock_init(&id_tbl->lock);
 id_tbl->table = kcalloc(BITS_TO_LONGS(size), sizeof(long), GFP_KERNEL);
 if (!id_tbl->table)
  return -ENOMEM;

 return 0;
}
