
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_sid {int num_subauth; int * sub_auth; int revision; } ;


 int EINVAL ;
 int FYI ;
 int VFS ;
 int cifs_dbg (int ,char*,...) ;
 struct cifs_sid* le32_to_cpu (int ) ;

__attribute__((used)) static int parse_sid(struct cifs_sid *psid, char *end_of_acl)
{




 if (end_of_acl < (char *)psid + 8) {
  cifs_dbg(VFS, "ACL too small to parse SID %p\n", psid);
  return -EINVAL;
 }
 return 0;
}
