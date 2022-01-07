
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int mmput (struct mm_struct*) ;

__attribute__((used)) static void release_mm(struct mm_struct *mm)
{
 if (!mm)
  return;
 mmput(mm);
}
