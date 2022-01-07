
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_seq_data {int tc_index_bitmap_bits; int tc_index_bitmap; void** tc_index_array; } ;


 int find_first_zero_bit (int ,int) ;
 int set_bit (int,int ) ;

__attribute__((used)) static inline int asd_tc_index_get(struct asd_seq_data *seq, void *ptr)
{
 int index;

 index = find_first_zero_bit(seq->tc_index_bitmap,
        seq->tc_index_bitmap_bits);
 if (index == seq->tc_index_bitmap_bits)
  return -1;

 seq->tc_index_array[index] = ptr;
 set_bit(index, seq->tc_index_bitmap);

 return index;
}
