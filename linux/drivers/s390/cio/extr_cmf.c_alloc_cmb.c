
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmb_data {int size; struct cmb_data* last_block; } ;
struct cmb {int dummy; } ;
struct ccw_device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int num_channels; int lock; struct cmb* mem; int list; } ;


 int CMF_ON ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int WARN_ON (int) ;
 scalar_t__ __get_free_pages (int,int ) ;
 int alloc_cmb_single (struct ccw_device*,struct cmb_data*) ;
 TYPE_1__ cmb_area ;
 int cmf_activate (struct cmb*,int ) ;
 int free_pages (unsigned long,int ) ;
 int get_order (int) ;
 int kfree (struct cmb_data*) ;
 void* kzalloc (int,int) ;
 int list_empty (int *) ;
 int memset (struct cmb*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int alloc_cmb(struct ccw_device *cdev)
{
 int ret;
 struct cmb *mem;
 ssize_t size;
 struct cmb_data *cmb_data;


 cmb_data = kzalloc(sizeof(struct cmb_data), GFP_KERNEL);
 if (!cmb_data)
  return -ENOMEM;

 cmb_data->last_block = kzalloc(sizeof(struct cmb), GFP_KERNEL);
 if (!cmb_data->last_block) {
  kfree(cmb_data);
  return -ENOMEM;
 }
 cmb_data->size = sizeof(struct cmb);
 spin_lock(&cmb_area.lock);

 if (!cmb_area.mem) {

  size = sizeof(struct cmb) * cmb_area.num_channels;
  WARN_ON(!list_empty(&cmb_area.list));

  spin_unlock(&cmb_area.lock);
  mem = (void*)__get_free_pages(GFP_KERNEL | GFP_DMA,
     get_order(size));
  spin_lock(&cmb_area.lock);

  if (cmb_area.mem) {

   free_pages((unsigned long)mem, get_order(size));
  } else if (!mem) {

   ret = -ENOMEM;
   goto out;
  } else {

   memset(mem, 0, size);
   cmb_area.mem = mem;
   cmf_activate(cmb_area.mem, CMF_ON);
  }
 }


 ret = alloc_cmb_single(cdev, cmb_data);
out:
 spin_unlock(&cmb_area.lock);
 if (ret) {
  kfree(cmb_data->last_block);
  kfree(cmb_data);
 }
 return ret;
}
