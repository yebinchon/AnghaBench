
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_mode; int i_sb; } ;
struct TYPE_3__ {scalar_t__ file_type; } ;
typedef TYPE_1__ ext2_dirent ;


 int EXT2_FEATURE_INCOMPAT_FILETYPE ;
 scalar_t__ EXT2_HAS_INCOMPAT_FEATURE (int ,int ) ;
 scalar_t__ fs_umode_to_ftype (int ) ;

__attribute__((used)) static inline void ext2_set_de_type(ext2_dirent *de, struct inode *inode)
{
 if (EXT2_HAS_INCOMPAT_FEATURE(inode->i_sb, EXT2_FEATURE_INCOMPAT_FILETYPE))
  de->file_type = fs_umode_to_ftype(inode->i_mode);
 else
  de->file_type = 0;
}
