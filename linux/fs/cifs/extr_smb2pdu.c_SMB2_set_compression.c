
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct compress_ioctl {int CompressionState; } ;
struct cifs_tcon {int dummy; } ;


 int CIFSMaxBufSize ;
 int COMPRESSION_FORMAT_DEFAULT ;
 int FSCTL_SET_COMPRESSION ;
 int FYI ;
 int SMB2_ioctl (unsigned int const,struct cifs_tcon*,int ,int ,int ,int,char*,int,int ,char**,int *) ;
 int cifs_dbg (int ,char*,int) ;
 int cpu_to_le16 (int ) ;

int
SMB2_set_compression(const unsigned int xid, struct cifs_tcon *tcon,
       u64 persistent_fid, u64 volatile_fid)
{
 int rc;
 struct compress_ioctl fsctl_input;
 char *ret_data = ((void*)0);

 fsctl_input.CompressionState =
   cpu_to_le16(COMPRESSION_FORMAT_DEFAULT);

 rc = SMB2_ioctl(xid, tcon, persistent_fid, volatile_fid,
   FSCTL_SET_COMPRESSION, 1 ,
   (char *)&fsctl_input ,
   2 , CIFSMaxBufSize ,
   &ret_data , ((void*)0));

 cifs_dbg(FYI, "set compression rc %d\n", rc);

 return rc;
}
