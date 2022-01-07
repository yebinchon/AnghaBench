
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_file_all_info {int dummy; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_fid {int volatile_fid; int persistent_fid; } ;
typedef int FILE_ALL_INFO ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PATH_MAX ;
 int SMB2_query_info (unsigned int const,struct cifs_tcon*,int ,int ,struct smb2_file_all_info*) ;
 int kfree (struct smb2_file_all_info*) ;
 struct smb2_file_all_info* kzalloc (int,int ) ;
 int move_smb2_info_to_cifs (int *,struct smb2_file_all_info*) ;

__attribute__((used)) static int
smb2_query_file_info(const unsigned int xid, struct cifs_tcon *tcon,
       struct cifs_fid *fid, FILE_ALL_INFO *data)
{
 int rc;
 struct smb2_file_all_info *smb2_data;

 smb2_data = kzalloc(sizeof(struct smb2_file_all_info) + PATH_MAX * 2,
       GFP_KERNEL);
 if (smb2_data == ((void*)0))
  return -ENOMEM;

 rc = SMB2_query_info(xid, tcon, fid->persistent_fid, fid->volatile_fid,
        smb2_data);
 if (!rc)
  move_smb2_info_to_cifs(data, smb2_data);
 kfree(smb2_data);
 return rc;
}
