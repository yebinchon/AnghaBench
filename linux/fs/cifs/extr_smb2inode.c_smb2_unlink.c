
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int dummy; } ;


 int ACL_NO_MODE ;
 int CREATE_DELETE_ON_CLOSE ;
 int DELETE ;
 int FILE_OPEN ;
 int OPEN_REPARSE_POINT ;
 int SMB2_OP_DELETE ;
 int smb2_compound_op (unsigned int const,struct cifs_tcon*,struct cifs_sb_info*,char const*,int ,int ,int,int ,int *,int ,int *) ;

int
smb2_unlink(const unsigned int xid, struct cifs_tcon *tcon, const char *name,
     struct cifs_sb_info *cifs_sb)
{
 return smb2_compound_op(xid, tcon, cifs_sb, name, DELETE, FILE_OPEN,
    CREATE_DELETE_ON_CLOSE | OPEN_REPARSE_POINT,
    ACL_NO_MODE, ((void*)0), SMB2_OP_DELETE, ((void*)0));
}
