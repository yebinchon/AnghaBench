
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int u32 ;
struct vsoc_region_data {int futex_wait_queue; } ;
struct vsoc_device_region {scalar_t__ region_begin_offset; scalar_t__ region_end_offset; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct vsoc_region_data* regions_data; } ;


 int E2BIG ;
 int EADDRNOTAVAIL ;
 int file_inode (struct file*) ;
 int iminor (int ) ;
 TYPE_1__ vsoc_dev ;
 struct vsoc_device_region* vsoc_region_from_filep (struct file*) ;
 int wake_up_interruptible_all (int *) ;

__attribute__((used)) static int do_vsoc_cond_wake(struct file *filp, uint32_t offset)
{
 struct vsoc_device_region *region_p = vsoc_region_from_filep(filp);
 u32 region_number = iminor(file_inode(filp));
 struct vsoc_region_data *data = vsoc_dev.regions_data + region_number;

 if (offset & (sizeof(uint32_t) - 1))
  return -EADDRNOTAVAIL;

 if (((uint64_t)offset) + region_p->region_begin_offset +
     sizeof(uint32_t) > region_p->region_end_offset)
  return -E2BIG;






 wake_up_interruptible_all(&data->futex_wait_queue);
 return 0;
}
