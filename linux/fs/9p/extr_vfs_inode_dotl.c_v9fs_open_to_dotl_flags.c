
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_ACCMODE ;
 int v9fs_mapped_dotl_flags (int) ;

int v9fs_open_to_dotl_flags(int flags)
{
 int rflags = 0;





 rflags |= flags & O_ACCMODE;
 rflags |= v9fs_mapped_dotl_flags(flags);

 return rflags;
}
