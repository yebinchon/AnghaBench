
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsctl_set_integrity_information_req {scalar_t__ Reserved; scalar_t__ Flags; int ChecksumAlgorithm; } ;
struct cifs_tcon {int dummy; } ;
struct TYPE_2__ {int volatile_fid; int persistent_fid; } ;
struct cifsFileInfo {TYPE_1__ fid; } ;


 int CHECKSUM_TYPE_UNCHANGED ;
 int CIFSMaxBufSize ;
 int FSCTL_SET_INTEGRITY_INFORMATION ;
 int SMB2_ioctl (unsigned int const,struct cifs_tcon*,int ,int ,int ,int,char*,int,int ,int *,unsigned int*) ;
 int cpu_to_le16 (int ) ;

__attribute__((used)) static int
smb3_set_integrity(const unsigned int xid, struct cifs_tcon *tcon,
     struct cifsFileInfo *cfile)
{
 struct fsctl_set_integrity_information_req integr_info;
 unsigned int ret_data_len;

 integr_info.ChecksumAlgorithm = cpu_to_le16(CHECKSUM_TYPE_UNCHANGED);
 integr_info.Flags = 0;
 integr_info.Reserved = 0;

 return SMB2_ioctl(xid, tcon, cfile->fid.persistent_fid,
   cfile->fid.volatile_fid,
   FSCTL_SET_INTEGRITY_INFORMATION,
   1 ,
   (char *)&integr_info,
   sizeof(struct fsctl_set_integrity_information_req),
   CIFSMaxBufSize, ((void*)0),
   &ret_data_len);

}
