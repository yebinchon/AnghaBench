
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int mmap_sem; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 size_t PAGE_SIZE ;
 int __check_mem_type (int ,unsigned long) ;
 TYPE_1__* current ;
 int down_read (int *) ;
 int find_vma (struct mm_struct*,unsigned long) ;
 int up_read (int *) ;

__attribute__((used)) static int check_mem_type(unsigned long start, size_t num_pages)
{
 struct mm_struct *mm = current->mm;
 int rc;

 down_read(&mm->mmap_sem);
 rc = __check_mem_type(find_vma(mm, start),
         start + num_pages * PAGE_SIZE);
 up_read(&mm->mmap_sem);

 return rc;
}
