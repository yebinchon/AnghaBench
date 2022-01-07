
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int dummy; } ;
typedef int __u64 ;
typedef int __le64 ;


 int ACL_NO_MODE ;
 int FILE_OPEN ;
 int FILE_WRITE_DATA ;
 int SMB2_OP_SET_EOF ;
 int cpu_to_le64 (int ) ;
 int smb2_compound_op (unsigned int const,struct cifs_tcon*,struct cifs_sb_info*,char const*,int ,int ,int ,int ,int *,int ,int *) ;

int
smb2_set_path_size(const unsigned int xid, struct cifs_tcon *tcon,
     const char *full_path, __u64 size,
     struct cifs_sb_info *cifs_sb, bool set_alloc)
{
 __le64 eof = cpu_to_le64(size);

 return smb2_compound_op(xid, tcon, cifs_sb, full_path,
    FILE_WRITE_DATA, FILE_OPEN, 0, ACL_NO_MODE,
    &eof, SMB2_OP_SET_EOF, ((void*)0));
}
