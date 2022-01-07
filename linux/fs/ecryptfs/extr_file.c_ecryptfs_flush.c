
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {TYPE_1__* f_op; int f_mapping; } ;
typedef int fl_owner_t ;
struct TYPE_2__ {int (* flush ) (struct file*,int ) ;} ;


 struct file* ecryptfs_file_to_lower (struct file*) ;
 int filemap_write_and_wait (int ) ;
 int stub1 (struct file*,int ) ;

__attribute__((used)) static int ecryptfs_flush(struct file *file, fl_owner_t td)
{
 struct file *lower_file = ecryptfs_file_to_lower(file);

 if (lower_file->f_op->flush) {
  filemap_write_and_wait(file->f_mapping);
  return lower_file->f_op->flush(lower_file, td);
 }

 return 0;
}
