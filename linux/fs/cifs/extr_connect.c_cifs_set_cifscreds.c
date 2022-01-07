
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vol {int dummy; } ;
struct cifs_ses {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static inline int
cifs_set_cifscreds(struct smb_vol *vol __attribute__((unused)),
     struct cifs_ses *ses __attribute__((unused)))
{
 return -ENOSYS;
}
