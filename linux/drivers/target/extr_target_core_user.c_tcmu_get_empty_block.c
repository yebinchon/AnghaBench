
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmu_dev {int dbi_thresh; int dbi_max; int data_bitmap; int data_blocks; } ;
struct tcmu_cmd {int dummy; } ;
struct page {int dummy; } ;


 int GFP_KERNEL ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 scalar_t__ atomic_add_return (int,int *) ;
 int atomic_dec (int *) ;
 int find_first_zero_bit (int ,int) ;
 int global_db_count ;
 int radix_tree_insert (int *,int,struct page*) ;
 struct page* radix_tree_lookup (int *,int) ;
 int schedule_delayed_work (int *,int ) ;
 int set_bit (int,int ) ;
 int tcmu_cmd_set_dbi (struct tcmu_cmd*,int) ;
 scalar_t__ tcmu_global_max_blocks ;
 int tcmu_unmap_work ;

__attribute__((used)) static inline bool tcmu_get_empty_block(struct tcmu_dev *udev,
     struct tcmu_cmd *tcmu_cmd)
{
 struct page *page;
 int ret, dbi;

 dbi = find_first_zero_bit(udev->data_bitmap, udev->dbi_thresh);
 if (dbi == udev->dbi_thresh)
  return 0;

 page = radix_tree_lookup(&udev->data_blocks, dbi);
 if (!page) {
  if (atomic_add_return(1, &global_db_count) >
          tcmu_global_max_blocks)
   schedule_delayed_work(&tcmu_unmap_work, 0);


  page = alloc_page(GFP_KERNEL);
  if (!page)
   goto err_alloc;

  ret = radix_tree_insert(&udev->data_blocks, dbi, page);
  if (ret)
   goto err_insert;
 }

 if (dbi > udev->dbi_max)
  udev->dbi_max = dbi;

 set_bit(dbi, udev->data_bitmap);
 tcmu_cmd_set_dbi(tcmu_cmd, dbi);

 return 1;
err_insert:
 __free_page(page);
err_alloc:
 atomic_dec(&global_db_count);
 return 0;
}
