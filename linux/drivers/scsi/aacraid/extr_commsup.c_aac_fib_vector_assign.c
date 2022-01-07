
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct fib {size_t vector_no; } ;
struct aac_dev {int max_msix; size_t vector_cap; TYPE_1__* scsi_host_ptr; struct fib* fibs; } ;
struct TYPE_2__ {size_t can_queue; } ;


 size_t AAC_NUM_MGT_FIB ;

void aac_fib_vector_assign(struct aac_dev *dev)
{
 u32 i = 0;
 u32 vector = 1;
 struct fib *fibptr = ((void*)0);

 for (i = 0, fibptr = &dev->fibs[i];
  i < (dev->scsi_host_ptr->can_queue + AAC_NUM_MGT_FIB);
  i++, fibptr++) {
  if ((dev->max_msix == 1) ||
    (i > ((dev->scsi_host_ptr->can_queue + AAC_NUM_MGT_FIB - 1)
   - dev->vector_cap))) {
   fibptr->vector_no = 0;
  } else {
   fibptr->vector_no = vector;
   vector++;
   if (vector == dev->max_msix)
    vector = 1;
  }
 }
}
