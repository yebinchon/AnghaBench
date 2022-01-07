
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmu_dev {size_t data_off; } ;


 int DATA_BLOCK_SIZE ;

__attribute__((used)) static inline size_t get_block_offset_user(struct tcmu_dev *dev,
  int dbi, int remaining)
{
 return dev->data_off + dbi * DATA_BLOCK_SIZE +
  DATA_BLOCK_SIZE - remaining;
}
