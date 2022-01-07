
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_REMOVEDIR ;
 int P9_DOTL_AT_REMOVEDIR ;

__attribute__((used)) static int v9fs_at_to_dotl_flags(int flags)
{
 int rflags = 0;
 if (flags & AT_REMOVEDIR)
  rflags |= P9_DOTL_AT_REMOVEDIR;
 return rflags;
}
