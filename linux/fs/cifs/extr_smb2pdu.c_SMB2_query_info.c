
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct smb2_file_all_info {int dummy; } ;
struct cifs_tcon {int dummy; } ;


 int FILE_ALL_INFORMATION ;
 int PATH_MAX ;
 int SMB2_O_INFO_FILE ;
 int query_info (unsigned int const,struct cifs_tcon*,int ,int ,int ,int ,int ,int,int,void**,int *) ;

int SMB2_query_info(const unsigned int xid, struct cifs_tcon *tcon,
 u64 persistent_fid, u64 volatile_fid, struct smb2_file_all_info *data)
{
 return query_info(xid, tcon, persistent_fid, volatile_fid,
     FILE_ALL_INFORMATION, SMB2_O_INFO_FILE, 0,
     sizeof(struct smb2_file_all_info) + PATH_MAX * 2,
     sizeof(struct smb2_file_all_info), (void **)&data,
     ((void*)0));
}
