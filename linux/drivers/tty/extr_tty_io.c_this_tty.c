
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {TYPE_1__* f_op; } ;
struct TYPE_2__ {scalar_t__ read; } ;


 void const* file_tty (struct file*) ;
 scalar_t__ likely (int) ;
 scalar_t__ tty_read ;

__attribute__((used)) static int this_tty(const void *t, struct file *file, unsigned fd)
{
 if (likely(file->f_op->read != tty_read))
  return 0;
 return file_tty(file) != t ? 0 : fd + 1;
}
