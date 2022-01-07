
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOPNOTSUPP ;
 unsigned int FS_XFLAG_APPEND ;
 unsigned int FS_XFLAG_IMMUTABLE ;
 unsigned int FS_XFLAG_NOATIME ;
 unsigned int FS_XFLAG_NODUMP ;
 unsigned int FS_XFLAG_SYNC ;

__attribute__((used)) static int check_xflags(unsigned int flags)
{
 if (flags & ~(FS_XFLAG_APPEND | FS_XFLAG_IMMUTABLE | FS_XFLAG_NOATIME |
        FS_XFLAG_NODUMP | FS_XFLAG_SYNC))
  return -EOPNOTSUPP;
 return 0;
}
