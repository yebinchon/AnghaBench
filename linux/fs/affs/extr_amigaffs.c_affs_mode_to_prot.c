
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
typedef int u32 ;
struct inode {int i_mode; } ;
struct TYPE_2__ {int i_protect; } ;


 TYPE_1__* AFFS_I (struct inode*) ;
 int FIBF_GRP_EXECUTE ;
 int FIBF_GRP_READ ;
 int FIBF_GRP_WRITE ;
 int FIBF_NOEXECUTE ;
 int FIBF_NOREAD ;
 int FIBF_NOWRITE ;
 int FIBF_OTR_EXECUTE ;
 int FIBF_OTR_READ ;
 int FIBF_OTR_WRITE ;

void
affs_mode_to_prot(struct inode *inode)
{
 u32 prot = AFFS_I(inode)->i_protect;
 umode_t mode = inode->i_mode;

 if (!(mode & 0100))
  prot |= FIBF_NOEXECUTE;
 if (!(mode & 0400))
  prot |= FIBF_NOREAD;
 if (!(mode & 0200))
  prot |= FIBF_NOWRITE;
 if (mode & 0010)
  prot |= FIBF_GRP_EXECUTE;
 if (mode & 0040)
  prot |= FIBF_GRP_READ;
 if (mode & 0020)
  prot |= FIBF_GRP_WRITE;
 if (mode & 0001)
  prot |= FIBF_OTR_EXECUTE;
 if (mode & 0004)
  prot |= FIBF_OTR_READ;
 if (mode & 0002)
  prot |= FIBF_OTR_WRITE;

 AFFS_I(inode)->i_protect = prot;
}
