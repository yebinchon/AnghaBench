
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tcmu_dev {int data_blocks; } ;
struct page {int dummy; } ;


 struct page* radix_tree_lookup (int *,int ) ;

__attribute__((used)) static inline struct page *
tcmu_get_block_page(struct tcmu_dev *udev, uint32_t dbi)
{
 return radix_tree_lookup(&udev->data_blocks, dbi);
}
