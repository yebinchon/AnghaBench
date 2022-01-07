
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct muram_block {unsigned long start; unsigned long size; int head; } ;
typedef int genpool_algo_t ;


 scalar_t__ ENOMEM ;
 unsigned long GENPOOL_OFFSET ;
 int GFP_ATOMIC ;
 int cpm_muram_addr (unsigned long) ;
 scalar_t__ cpm_muram_init () ;
 unsigned long gen_pool_alloc_algo (int ,unsigned long,int ,void*) ;
 int gen_pool_free (int ,unsigned long,unsigned long) ;
 struct muram_block* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memset_io (int ,int ,unsigned long) ;
 int muram_block_list ;
 int muram_pool ;

__attribute__((used)) static unsigned long cpm_muram_alloc_common(unsigned long size,
  genpool_algo_t algo, void *data)
{
 struct muram_block *entry;
 unsigned long start;

 if (!muram_pool && cpm_muram_init())
  goto out2;

 start = gen_pool_alloc_algo(muram_pool, size, algo, data);
 if (!start)
  goto out2;
 start = start - GENPOOL_OFFSET;
 memset_io(cpm_muram_addr(start), 0, size);
 entry = kmalloc(sizeof(*entry), GFP_ATOMIC);
 if (!entry)
  goto out1;
 entry->start = start;
 entry->size = size;
 list_add(&entry->head, &muram_block_list);

 return start;
out1:
 gen_pool_free(muram_pool, start, size);
out2:
 return (unsigned long)-ENOMEM;
}
