
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct cifs_sb_info {int dummy; } ;
struct TYPE_2__ {int i_sb; } ;


 struct cifs_sb_info* CIFS_SB (int ) ;
 TYPE_1__* file_inode (struct file*) ;

__attribute__((used)) static inline struct cifs_sb_info *
CIFS_FILE_SB(struct file *file)
{
 return CIFS_SB(file_inode(file)->i_sb);
}
