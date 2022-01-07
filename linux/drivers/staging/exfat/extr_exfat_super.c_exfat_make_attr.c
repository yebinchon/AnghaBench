
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct inode {int i_mode; } ;
struct TYPE_3__ {int attr; } ;
struct TYPE_4__ {TYPE_1__ fid; } ;


 int ATTR_READONLY ;
 TYPE_2__* EXFAT_I (struct inode*) ;
 scalar_t__ exfat_mode_can_hold_ro (struct inode*) ;

__attribute__((used)) static inline u32 exfat_make_attr(struct inode *inode)
{
 if (exfat_mode_can_hold_ro(inode) && !(inode->i_mode & 0222))
  return (EXFAT_I(inode)->fid.attr) | ATTR_READONLY;
 else
  return EXFAT_I(inode)->fid.attr;
}
