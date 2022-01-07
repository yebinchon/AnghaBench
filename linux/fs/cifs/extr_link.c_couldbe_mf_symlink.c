
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_fattr {scalar_t__ cf_eof; int cf_mode; } ;


 scalar_t__ CIFS_MF_SYMLINK_FILE_SIZE ;
 int S_ISREG (int ) ;

bool
couldbe_mf_symlink(const struct cifs_fattr *fattr)
{
 if (!S_ISREG(fattr->cf_mode))

  return 0;

 if (fattr->cf_eof != CIFS_MF_SYMLINK_FILE_SIZE)

  return 0;

 return 1;
}
