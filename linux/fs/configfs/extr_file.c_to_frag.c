
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct configfs_fragment {int dummy; } ;
struct configfs_dirent {struct configfs_fragment* s_frag; } ;
struct TYPE_3__ {struct configfs_dirent* d_fsdata; } ;



__attribute__((used)) static inline struct configfs_fragment *to_frag(struct file *file)
{
 struct configfs_dirent *sd = file->f_path.dentry->d_fsdata;

 return sd->s_frag;
}
