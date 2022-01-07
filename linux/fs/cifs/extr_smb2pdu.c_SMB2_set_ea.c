
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct smb2_file_full_ea_info {int dummy; } ;
struct cifs_tcon {int dummy; } ;
struct TYPE_2__ {int tgid; } ;


 int FILE_FULL_EA_INFORMATION ;
 int SMB2_O_INFO_FILE ;
 TYPE_1__* current ;
 int send_set_info (unsigned int const,struct cifs_tcon*,int ,int ,int ,int ,int ,int ,int,void**,int*) ;

int
SMB2_set_ea(const unsigned int xid, struct cifs_tcon *tcon,
     u64 persistent_fid, u64 volatile_fid,
     struct smb2_file_full_ea_info *buf, int len)
{
 return send_set_info(xid, tcon, persistent_fid, volatile_fid,
  current->tgid, FILE_FULL_EA_INFORMATION, SMB2_O_INFO_FILE,
  0, 1, (void **)&buf, &len);
}
