
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct badblocks {scalar_t__ count; } ;
typedef int sector_t ;


 int badblocks_check (struct badblocks*,int ,unsigned int,int *,int*) ;

__attribute__((used)) static inline bool is_bad_pmem(struct badblocks *bb, sector_t sector,
  unsigned int len)
{
 if (bb->count) {
  sector_t first_bad;
  int num_bad;

  return !!badblocks_check(bb, sector, len / 512, &first_bad,
    &num_bad);
 }

 return 0;
}
