
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; scalar_t__ vm_file; } ;
struct notifier_block {int dummy; } ;
struct mm_struct {int mmap_sem; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int VM_EXEC ;
 TYPE_1__* current ;
 int down_read (int *) ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 int raw_smp_processor_id () ;
 int sync_buffer (int ) ;
 int up_read (int *) ;

__attribute__((used)) static int
munmap_notify(struct notifier_block *self, unsigned long val, void *data)
{
 unsigned long addr = (unsigned long)data;
 struct mm_struct *mm = current->mm;
 struct vm_area_struct *mpnt;

 down_read(&mm->mmap_sem);

 mpnt = find_vma(mm, addr);
 if (mpnt && mpnt->vm_file && (mpnt->vm_flags & VM_EXEC)) {
  up_read(&mm->mmap_sem);



  sync_buffer(raw_smp_processor_id());
  return 0;
 }

 up_read(&mm->mmap_sem);
 return 0;
}
