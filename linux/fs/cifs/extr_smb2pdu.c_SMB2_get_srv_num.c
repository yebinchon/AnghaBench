
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct smb2_file_internal_info {int dummy; } ;
struct cifs_tcon {int dummy; } ;
typedef int __le64 ;


 int FILE_INTERNAL_INFORMATION ;
 int SMB2_O_INFO_FILE ;
 int query_info (unsigned int const,struct cifs_tcon*,int ,int ,int ,int ,int ,int,int,void**,int *) ;

int
SMB2_get_srv_num(const unsigned int xid, struct cifs_tcon *tcon,
   u64 persistent_fid, u64 volatile_fid, __le64 *uniqueid)
{
 return query_info(xid, tcon, persistent_fid, volatile_fid,
     FILE_INTERNAL_INFORMATION, SMB2_O_INFO_FILE, 0,
     sizeof(struct smb2_file_internal_info),
     sizeof(struct smb2_file_internal_info),
     (void **)&uniqueid, ((void*)0));
}
