
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {unsigned long pgoff; struct page* page; TYPE_2__* vma; } ;
struct page {int dummy; } ;
struct mon_reader_bin {unsigned long b_size; int fetch_lock; TYPE_1__* b_vec; } ;
struct TYPE_4__ {struct mon_reader_bin* vm_private_data; } ;
struct TYPE_3__ {struct page* pg; } ;


 unsigned long CHUNK_SIZE ;
 unsigned long PAGE_SHIFT ;
 int VM_FAULT_SIGBUS ;
 int get_page (struct page*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static vm_fault_t mon_bin_vma_fault(struct vm_fault *vmf)
{
 struct mon_reader_bin *rp = vmf->vma->vm_private_data;
 unsigned long offset, chunk_idx;
 struct page *pageptr;

 mutex_lock(&rp->fetch_lock);
 offset = vmf->pgoff << PAGE_SHIFT;
 if (offset >= rp->b_size) {
  mutex_unlock(&rp->fetch_lock);
  return VM_FAULT_SIGBUS;
 }
 chunk_idx = offset / CHUNK_SIZE;
 pageptr = rp->b_vec[chunk_idx].pg;
 get_page(pageptr);
 mutex_unlock(&rp->fetch_lock);
 vmf->page = pageptr;
 return 0;
}
