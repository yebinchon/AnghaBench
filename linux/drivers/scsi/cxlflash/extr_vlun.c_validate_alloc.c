
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int u64 ;
struct ba_lun_info {int * lun_alloc_map; } ;


 int BITS_PER_LONG ;
 scalar_t__ test_bit (int,int *) ;

__attribute__((used)) static int validate_alloc(struct ba_lun_info *bali, u64 aun)
{
 int idx = 0, bit_pos = 0;

 idx = aun / BITS_PER_LONG;
 bit_pos = aun % BITS_PER_LONG;

 if (test_bit(bit_pos, (ulong *)&bali->lun_alloc_map[idx]))
  return -1;

 return 0;
}
