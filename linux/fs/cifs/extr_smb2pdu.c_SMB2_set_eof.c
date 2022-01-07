
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct smb2_file_eof_info {int EndOfFile; } ;
struct cifs_tcon {int dummy; } ;
typedef int __le64 ;


 int FILE_END_OF_FILE_INFORMATION ;
 int SMB2_O_INFO_FILE ;
 int send_set_info (unsigned int const,struct cifs_tcon*,int ,int ,int ,int ,int ,int ,int,void**,unsigned int*) ;

int
SMB2_set_eof(const unsigned int xid, struct cifs_tcon *tcon, u64 persistent_fid,
      u64 volatile_fid, u32 pid, __le64 *eof)
{
 struct smb2_file_eof_info info;
 void *data;
 unsigned int size;

 info.EndOfFile = *eof;

 data = &info;
 size = sizeof(struct smb2_file_eof_info);

 return send_set_info(xid, tcon, persistent_fid, volatile_fid,
   pid, FILE_END_OF_FILE_INFORMATION, SMB2_O_INFO_FILE,
   0, 1, &data, &size);
}
