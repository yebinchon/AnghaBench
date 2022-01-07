
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int dummy; } ;


 int ACL_NO_MODE ;
 int CREATE_NOT_FILE ;
 int DELETE ;
 int FILE_OPEN ;
 int SMB2_OP_RMDIR ;
 int smb2_compound_op (unsigned int const,struct cifs_tcon*,struct cifs_sb_info*,char const*,int ,int ,int ,int ,int *,int ,int *) ;

int
smb2_rmdir(const unsigned int xid, struct cifs_tcon *tcon, const char *name,
    struct cifs_sb_info *cifs_sb)
{
 return smb2_compound_op(xid, tcon, cifs_sb, name, DELETE, FILE_OPEN,
    CREATE_NOT_FILE, ACL_NO_MODE,
    ((void*)0), SMB2_OP_RMDIR, ((void*)0));
}
