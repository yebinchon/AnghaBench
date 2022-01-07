
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int dummy; } ;


 int CREATE_NOT_FILE ;
 int FILE_CREATE ;
 int FILE_WRITE_ATTRIBUTES ;
 int SMB2_OP_MKDIR ;
 int smb2_compound_op (unsigned int const,struct cifs_tcon*,struct cifs_sb_info*,char const*,int ,int ,int ,int ,int *,int ,int *) ;

int
smb2_mkdir(const unsigned int xid, struct inode *parent_inode, umode_t mode,
    struct cifs_tcon *tcon, const char *name,
    struct cifs_sb_info *cifs_sb)
{
 return smb2_compound_op(xid, tcon, cifs_sb, name,
    FILE_WRITE_ATTRIBUTES, FILE_CREATE,
    CREATE_NOT_FILE, mode, ((void*)0), SMB2_OP_MKDIR,
    ((void*)0));
}
