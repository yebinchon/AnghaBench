
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int dummy; } ;


 int FILE_READ_ATTRIBUTES ;
 int SMB2_OP_HARDLINK ;
 int smb2_set_path_attr (unsigned int const,struct cifs_tcon*,char const*,char const*,struct cifs_sb_info*,int ,int ,int *) ;

int
smb2_create_hardlink(const unsigned int xid, struct cifs_tcon *tcon,
       const char *from_name, const char *to_name,
       struct cifs_sb_info *cifs_sb)
{
 return smb2_set_path_attr(xid, tcon, from_name, to_name, cifs_sb,
      FILE_READ_ATTRIBUTES, SMB2_OP_HARDLINK,
      ((void*)0));
}
