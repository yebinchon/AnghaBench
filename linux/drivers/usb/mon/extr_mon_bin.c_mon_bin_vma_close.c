
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct mon_reader_bin* vm_private_data; } ;
struct mon_reader_bin {int mmap_active; } ;



__attribute__((used)) static void mon_bin_vma_close(struct vm_area_struct *vma)
{
 struct mon_reader_bin *rp = vma->vm_private_data;
 rp->mmap_active--;
}
