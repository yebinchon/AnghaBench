
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_size; } ;
struct cifs_tcon {int dummy; } ;
struct TYPE_2__ {int volatile_fid; int persistent_fid; } ;
struct cifsFileInfo {int pid; TYPE_1__ fid; int dentry; } ;
typedef int __u8 ;
typedef scalar_t__ __u64 ;
typedef int __le64 ;


 int SMB2_set_eof (unsigned int const,struct cifs_tcon*,int ,int ,int ,int *) ;
 int cpu_to_le64 (scalar_t__) ;
 struct inode* d_inode (int ) ;
 int smb2_set_sparse (unsigned int const,struct cifs_tcon*,struct cifsFileInfo*,struct inode*,int) ;

__attribute__((used)) static int
smb2_set_file_size(const unsigned int xid, struct cifs_tcon *tcon,
     struct cifsFileInfo *cfile, __u64 size, bool set_alloc)
{
 __le64 eof = cpu_to_le64(size);
 struct inode *inode;





 inode = d_inode(cfile->dentry);

 if (!set_alloc && (size > inode->i_size + 8192)) {
  __u8 set_sparse = 1;


  smb2_set_sparse(xid, tcon, cfile, inode, set_sparse);
 }

 return SMB2_set_eof(xid, tcon, cfile->fid.persistent_fid,
       cfile->fid.volatile_fid, cfile->pid, &eof);
}
