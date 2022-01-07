
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dotl_iattr_map {int iattr_valid; int p9_iattr_valid; int member_1; int member_0; } ;


 int ARRAY_SIZE (struct dotl_iattr_map*) ;
 int ATTR_ATIME ;
 int ATTR_ATIME_SET ;
 int ATTR_CTIME ;
 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_MTIME ;
 int ATTR_MTIME_SET ;
 int ATTR_SIZE ;
 int ATTR_UID ;
 int P9_ATTR_ATIME ;
 int P9_ATTR_ATIME_SET ;
 int P9_ATTR_CTIME ;
 int P9_ATTR_GID ;
 int P9_ATTR_MODE ;
 int P9_ATTR_MTIME ;
 int P9_ATTR_MTIME_SET ;
 int P9_ATTR_SIZE ;
 int P9_ATTR_UID ;

__attribute__((used)) static int v9fs_mapped_iattr_valid(int iattr_valid)
{
 int i;
 int p9_iattr_valid = 0;
 struct dotl_iattr_map dotl_iattr_map[] = {
  { ATTR_MODE, P9_ATTR_MODE },
  { ATTR_UID, P9_ATTR_UID },
  { ATTR_GID, P9_ATTR_GID },
  { ATTR_SIZE, P9_ATTR_SIZE },
  { ATTR_ATIME, P9_ATTR_ATIME },
  { ATTR_MTIME, P9_ATTR_MTIME },
  { ATTR_CTIME, P9_ATTR_CTIME },
  { ATTR_ATIME_SET, P9_ATTR_ATIME_SET },
  { ATTR_MTIME_SET, P9_ATTR_MTIME_SET },
 };
 for (i = 0; i < ARRAY_SIZE(dotl_iattr_map); i++) {
  if (iattr_valid & dotl_iattr_map[i].iattr_valid)
   p9_iattr_valid |= dotl_iattr_map[i].p9_iattr_valid;
 }
 return p9_iattr_valid;
}
