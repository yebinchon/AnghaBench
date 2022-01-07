
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dotl_openflag_map {int open_flag; int dotl_flag; int member_1; int member_0; } ;


 int ARRAY_SIZE (struct dotl_openflag_map*) ;
 int FASYNC ;
 int O_APPEND ;
 int O_CLOEXEC ;
 int O_CREAT ;
 int O_DIRECT ;
 int O_DIRECTORY ;
 int O_DSYNC ;
 int O_EXCL ;
 int O_LARGEFILE ;
 int O_NOATIME ;
 int O_NOCTTY ;
 int O_NOFOLLOW ;
 int O_NONBLOCK ;
 int O_SYNC ;
 int P9_DOTL_APPEND ;
 int P9_DOTL_CLOEXEC ;
 int P9_DOTL_CREATE ;
 int P9_DOTL_DIRECT ;
 int P9_DOTL_DIRECTORY ;
 int P9_DOTL_DSYNC ;
 int P9_DOTL_EXCL ;
 int P9_DOTL_FASYNC ;
 int P9_DOTL_LARGEFILE ;
 int P9_DOTL_NOATIME ;
 int P9_DOTL_NOCTTY ;
 int P9_DOTL_NOFOLLOW ;
 int P9_DOTL_NONBLOCK ;
 int P9_DOTL_SYNC ;

__attribute__((used)) static int v9fs_mapped_dotl_flags(int flags)
{
 int i;
 int rflags = 0;
 struct dotl_openflag_map dotl_oflag_map[] = {
  { O_CREAT, P9_DOTL_CREATE },
  { O_EXCL, P9_DOTL_EXCL },
  { O_NOCTTY, P9_DOTL_NOCTTY },
  { O_APPEND, P9_DOTL_APPEND },
  { O_NONBLOCK, P9_DOTL_NONBLOCK },
  { O_DSYNC, P9_DOTL_DSYNC },
  { FASYNC, P9_DOTL_FASYNC },
  { O_DIRECT, P9_DOTL_DIRECT },
  { O_LARGEFILE, P9_DOTL_LARGEFILE },
  { O_DIRECTORY, P9_DOTL_DIRECTORY },
  { O_NOFOLLOW, P9_DOTL_NOFOLLOW },
  { O_NOATIME, P9_DOTL_NOATIME },
  { O_CLOEXEC, P9_DOTL_CLOEXEC },
  { O_SYNC, P9_DOTL_SYNC},
 };
 for (i = 0; i < ARRAY_SIZE(dotl_oflag_map); i++) {
  if (flags & dotl_oflag_map[i].open_flag)
   rflags |= dotl_oflag_map[i].dotl_flag;
 }
 return rflags;
}
