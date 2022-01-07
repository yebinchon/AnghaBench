
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct file {int f_path; } ;


 unsigned long NO_COOKIE ;
 unsigned long fast_get_dcookie (int *) ;
 int fput (struct file*) ;
 struct file* get_mm_exe_file (struct mm_struct*) ;

__attribute__((used)) static unsigned long get_exec_dcookie(struct mm_struct *mm)
{
 unsigned long cookie = NO_COOKIE;
 struct file *exe_file;

 if (!mm)
  goto done;

 exe_file = get_mm_exe_file(mm);
 if (!exe_file)
  goto done;

 cookie = fast_get_dcookie(&exe_file->f_path);
 fput(exe_file);
done:
 return cookie;
}
