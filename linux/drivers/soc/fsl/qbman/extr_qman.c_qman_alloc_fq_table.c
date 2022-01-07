
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qman_fq {int dummy; } ;


 int ENOMEM ;
 int array3_size (int,int,int) ;
 int fq_table ;
 int num_fqids ;
 int pr_debug (char*,int ,int) ;
 int vzalloc (int ) ;

int qman_alloc_fq_table(u32 _num_fqids)
{
 num_fqids = _num_fqids;

 fq_table = vzalloc(array3_size(sizeof(struct qman_fq *),
           num_fqids, 2));
 if (!fq_table)
  return -ENOMEM;

 pr_debug("Allocated fq lookup table at %p, entry count %u\n",
   fq_table, num_fqids * 2);
 return 0;
}
