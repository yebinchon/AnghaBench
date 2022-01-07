
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tcmu_dev {int cmdr_lock; int name; } ;
struct page {int dummy; } ;


 scalar_t__ likely (struct page*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int ,int ) ;
 struct page* tcmu_get_block_page (struct tcmu_dev*,int ) ;

__attribute__((used)) static struct page *tcmu_try_get_block_page(struct tcmu_dev *udev, uint32_t dbi)
{
 struct page *page;

 mutex_lock(&udev->cmdr_lock);
 page = tcmu_get_block_page(udev, dbi);
 if (likely(page)) {
  mutex_unlock(&udev->cmdr_lock);
  return page;
 }





 pr_err("Invalid addr to data block mapping  (dbi %u) on device %s\n",
        dbi, udev->name);
 page = ((void*)0);
 mutex_unlock(&udev->cmdr_lock);

 return page;
}
