
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vfio_dma {int lock_cap; TYPE_1__* task; } ;
struct mm_struct {int mmap_sem; } ;
struct TYPE_3__ {struct mm_struct* mm; } ;


 int ESRCH ;
 int __account_locked_vm (struct mm_struct*,int ,int,TYPE_1__*,int ) ;
 int abs (long) ;
 int down_write_killable (int *) ;
 struct mm_struct* get_task_mm (TYPE_1__*) ;
 int mmput (struct mm_struct*) ;
 int up_write (int *) ;

__attribute__((used)) static int vfio_lock_acct(struct vfio_dma *dma, long npage, bool async)
{
 struct mm_struct *mm;
 int ret;

 if (!npage)
  return 0;

 mm = async ? get_task_mm(dma->task) : dma->task->mm;
 if (!mm)
  return -ESRCH;

 ret = down_write_killable(&mm->mmap_sem);
 if (!ret) {
  ret = __account_locked_vm(mm, abs(npage), npage > 0, dma->task,
       dma->lock_cap);
  up_write(&mm->mmap_sem);
 }

 if (async)
  mmput(mm);

 return ret;
}
