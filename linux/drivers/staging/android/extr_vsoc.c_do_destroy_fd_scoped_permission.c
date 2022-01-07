
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vsoc_device_region {int device_name; scalar_t__ region_begin_offset; } ;
struct fd_scoped_permission {int owned_value; scalar_t__ owner_offset; int end_offset; int begin_offset; } ;
typedef int atomic_t ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int dev; } ;


 int VSOC_REGION_FREE ;
 int atomic_xchg (int *,int ) ;
 int dev_err (int *,char*,int ,int ,int ,scalar_t__,int,int) ;
 scalar_t__ shm_off_to_virtual_addr (scalar_t__) ;
 TYPE_2__ vsoc_dev ;

__attribute__((used)) static void
do_destroy_fd_scoped_permission(struct vsoc_device_region *owner_region_p,
    struct fd_scoped_permission *perm)
{
 atomic_t *owner_ptr = ((void*)0);
 int prev = 0;

 if (!perm)
  return;
 owner_ptr = (atomic_t *)shm_off_to_virtual_addr
  (owner_region_p->region_begin_offset + perm->owner_offset);
 prev = atomic_xchg(owner_ptr, VSOC_REGION_FREE);
 if (prev != perm->owned_value)
  dev_err(&vsoc_dev.dev->dev,
   "%x-%x: owner (%s) %x: expected to be %x was %x",
   perm->begin_offset, perm->end_offset,
   owner_region_p->device_name, perm->owner_offset,
   perm->owned_value, prev);
}
